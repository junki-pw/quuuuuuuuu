import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quuuuuuuuu/core/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repo.freezed.dart';
part 'repo.g.dart';

@freezed
abstract class Book with _$Book {
  const factory Book({
    required String id,
    required int order,
    DateTime? updatedAt,
  }) = _Book;

  const Book._();

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  static String get collectionName => 'books';

  DateTime get at => updatedAt ?? DateTime.now();
}

@riverpod
Book? book(Ref ref, String bookId) {
  final list = ref.watch(bookRepoProvider).where((e) => e.id == bookId).toList()
    ..sort((a, b) => b.at.compareTo(a.at));

  return list.firstOrNull;
}

@riverpod
CollectionReference<Book> bookRef(Ref ref) {
  return ref
      .read(firestoreProvider)
      .collection(Book.collectionName)
      .withConverter<Book>(
        fromFirestore: (snapshot, _) => Book.fromJson(snapshot.data()!),
        toFirestore: (data, _) => data.toJson(),
      );
}

@Riverpod(keepAlive: true)
class BookRepo extends _$BookRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);
  CollectionReference<Book> get collection => ref.read(bookRefProvider);

  @override
  List<Book> build() => [];

  List<Book> _addState(List<Book?> books) {
    state = [
      ...state,
      for (final book in books)
        if (book != null) book,
    ];
    return books.whereType<Book>().toList();
  }

  Future<List<Book>> fetchBooks({int? limit, String? bookId}) async {
    Query<Book> query = collection.orderBy('order', descending: false);

    if (limit != null) {
      query = query.limit(limit);
    }

    if (bookId != null) {
      final documentSnapshot =
          await db.collection(Book.collectionName).doc(bookId).get();
      _addState([Book.fromJson(documentSnapshot.data() ?? {})]);

      /// 注意点：startAt などを使用する場合は orderBy を先に置く必要がある
      query = query.startAfterDocument(documentSnapshot);
    }

    return query.get().then(
          (value) => _addState(
            value.docs.map((e) => e.data()).toList(),
          ),
        );
  }
}
