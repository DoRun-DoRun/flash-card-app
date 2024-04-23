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

String _$allCardHash() => r'28a2287878ae3be8e27a4a80060e83c7bf634000';

/// See also [allCard].
@ProviderFor(allCard)
final allCardProvider = AutoDisposeProvider<List<WordCard>>.internal(
  allCard,
  name: r'allCardProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allCardHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllCardRef = AutoDisposeProviderRef<List<WordCard>>;
String _$cardDataHash() => r'edc73fb535426606649b5c88fada6c47ff45f25b';

/// See also [cardData].
@ProviderFor(cardData)
final cardDataProvider = AutoDisposeProvider<WordCardDataProvider>.internal(
  cardData,
  name: r'cardDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cardDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CardDataRef = AutoDisposeProviderRef<WordCardDataProvider>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
