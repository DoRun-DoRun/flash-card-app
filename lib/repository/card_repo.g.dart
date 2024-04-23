// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$randomCardHash() => r'133516d97ec68f87beeb034f802ea20e5e52806a';

/// See also [randomCard].
@ProviderFor(randomCard)
final randomCardProvider = AutoDisposeProvider<WordCard>.internal(
  randomCard,
  name: r'randomCardProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$randomCardHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RandomCardRef = AutoDisposeProviderRef<WordCard>;
String _$cardByIndexHash() => r'043ab57d7a89be0c478d5ab21147e9f3688fd4d3';

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

/// See also [cardByIndex].
@ProviderFor(cardByIndex)
const cardByIndexProvider = CardByIndexFamily();

/// See also [cardByIndex].
class CardByIndexFamily extends Family<WordCard> {
  /// See also [cardByIndex].
  const CardByIndexFamily();

  /// See also [cardByIndex].
  CardByIndexProvider call(
    int index,
  ) {
    return CardByIndexProvider(
      index,
    );
  }

  @override
  CardByIndexProvider getProviderOverride(
    covariant CardByIndexProvider provider,
  ) {
    return call(
      provider.index,
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
  String? get name => r'cardByIndexProvider';
}

/// See also [cardByIndex].
class CardByIndexProvider extends AutoDisposeProvider<WordCard> {
  /// See also [cardByIndex].
  CardByIndexProvider(
    int index,
  ) : this._internal(
          (ref) => cardByIndex(
            ref as CardByIndexRef,
            index,
          ),
          from: cardByIndexProvider,
          name: r'cardByIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cardByIndexHash,
          dependencies: CardByIndexFamily._dependencies,
          allTransitiveDependencies:
              CardByIndexFamily._allTransitiveDependencies,
          index: index,
        );

  CardByIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  Override overrideWith(
    WordCard Function(CardByIndexRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CardByIndexProvider._internal(
        (ref) => create(ref as CardByIndexRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<WordCard> createElement() {
    return _CardByIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CardByIndexProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CardByIndexRef on AutoDisposeProviderRef<WordCard> {
  /// The parameter `index` of this provider.
  int get index;
}

class _CardByIndexProviderElement extends AutoDisposeProviderElement<WordCard>
    with CardByIndexRef {
  _CardByIndexProviderElement(super.provider);

  @override
  int get index => (origin as CardByIndexProvider).index;
}

String _$allCardHash() => r'820ccf4ae69d0b8e0c6c1207709b2731240d7a23';

/// See also [allCard].
@ProviderFor(allCard)
const allCardProvider = AllCardFamily();

/// See also [allCard].
class AllCardFamily extends Family<List<WordCard>> {
  /// See also [allCard].
  const AllCardFamily();

  /// See also [allCard].
  AllCardProvider call(
    String? categoryName,
  ) {
    return AllCardProvider(
      categoryName,
    );
  }

  @override
  AllCardProvider getProviderOverride(
    covariant AllCardProvider provider,
  ) {
    return call(
      provider.categoryName,
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
  String? get name => r'allCardProvider';
}

/// See also [allCard].
class AllCardProvider extends AutoDisposeProvider<List<WordCard>> {
  /// See also [allCard].
  AllCardProvider(
    String? categoryName,
  ) : this._internal(
          (ref) => allCard(
            ref as AllCardRef,
            categoryName,
          ),
          from: allCardProvider,
          name: r'allCardProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$allCardHash,
          dependencies: AllCardFamily._dependencies,
          allTransitiveDependencies: AllCardFamily._allTransitiveDependencies,
          categoryName: categoryName,
        );

  AllCardProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryName,
  }) : super.internal();

  final String? categoryName;

  @override
  Override overrideWith(
    List<WordCard> Function(AllCardRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AllCardProvider._internal(
        (ref) => create(ref as AllCardRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryName: categoryName,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<WordCard>> createElement() {
    return _AllCardProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AllCardProvider && other.categoryName == categoryName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AllCardRef on AutoDisposeProviderRef<List<WordCard>> {
  /// The parameter `categoryName` of this provider.
  String? get categoryName;
}

class _AllCardProviderElement extends AutoDisposeProviderElement<List<WordCard>>
    with AllCardRef {
  _AllCardProviderElement(super.provider);

  @override
  String? get categoryName => (origin as AllCardProvider).categoryName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
