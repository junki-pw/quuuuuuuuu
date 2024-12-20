// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: json['id'] as String,
      order: (json['order'] as num).toInt(),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookHash() => r'b1ce1a27d182f13d0eb246261bd80b0e336044b7';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [book].
@ProviderFor(book)
const bookProvider = BookFamily();

/// See also [book].
class BookFamily extends Family<Book?> {
  /// See also [book].
  const BookFamily();

  /// See also [book].
  BookProvider call(
    String bookId,
  ) {
    return BookProvider(
      bookId,
    );
  }

  @override
  BookProvider getProviderOverride(
    covariant BookProvider provider,
  ) {
    return call(
      provider.bookId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bookProvider';
}

/// See also [book].
class BookProvider extends AutoDisposeProvider<Book?> {
  /// See also [book].
  BookProvider(
    String bookId,
  ) : this._internal(
          (ref) => book(
            ref as BookRef,
            bookId,
          ),
          from: bookProvider,
          name: r'bookProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$bookHash,
          dependencies: BookFamily._dependencies,
          allTransitiveDependencies: BookFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  BookProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookId,
  }) : super.internal();

  final String bookId;

  @override
  Override overrideWith(
    Book? Function(BookRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BookProvider._internal(
        (ref) => create(ref as BookRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookId: bookId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Book?> createElement() {
    return _BookProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookProvider && other.bookId == bookId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BookRef on AutoDisposeProviderRef<Book?> {
  /// The parameter `bookId` of this provider.
  String get bookId;
}

class _BookProviderElement extends AutoDisposeProviderElement<Book?>
    with BookRef {
  _BookProviderElement(super.provider);

  @override
  String get bookId => (origin as BookProvider).bookId;
}

String _$bookRefHash() => r'0fe34fd6ddbdc6967bedad43273623d938d8ce34';

/// See also [bookRef].
@ProviderFor(bookRef)
final bookRefProvider = AutoDisposeProvider<CollectionReference<Book>>.internal(
  bookRef,
  name: r'bookRefProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$bookRefHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BookRefRef = AutoDisposeProviderRef<CollectionReference<Book>>;
String _$bookRepoHash() => r'a75c15c413212874930a3fbaf4bed08d8a934c2a';

/// See also [BookRepo].
@ProviderFor(BookRepo)
final bookRepoProvider = NotifierProvider<BookRepo, List<Book>>.internal(
  BookRepo.new,
  name: r'bookRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$bookRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BookRepo = Notifier<List<Book>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
