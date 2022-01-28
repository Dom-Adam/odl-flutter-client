// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_opponent.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSearchOpponentData> _$gSearchOpponentDataSerializer =
    new _$GSearchOpponentDataSerializer();

class _$GSearchOpponentDataSerializer
    implements StructuredSerializer<GSearchOpponentData> {
  @override
  final Iterable<Type> types = const [
    GSearchOpponentData,
    _$GSearchOpponentData
  ];
  @override
  final String wireName = 'GSearchOpponentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchOpponentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'searchOpponent',
      serializers.serialize(object.searchOpponent,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSearchOpponentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchOpponentDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'searchOpponent':
          result.searchOpponent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchOpponentData extends GSearchOpponentData {
  @override
  final String G__typename;
  @override
  final String searchOpponent;

  factory _$GSearchOpponentData(
          [void Function(GSearchOpponentDataBuilder)? updates]) =>
      (new GSearchOpponentDataBuilder()..update(updates)).build();

  _$GSearchOpponentData._(
      {required this.G__typename, required this.searchOpponent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSearchOpponentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        searchOpponent, 'GSearchOpponentData', 'searchOpponent');
  }

  @override
  GSearchOpponentData rebuild(
          void Function(GSearchOpponentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchOpponentDataBuilder toBuilder() =>
      new GSearchOpponentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchOpponentData &&
        G__typename == other.G__typename &&
        searchOpponent == other.searchOpponent;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), searchOpponent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSearchOpponentData')
          ..add('G__typename', G__typename)
          ..add('searchOpponent', searchOpponent))
        .toString();
  }
}

class GSearchOpponentDataBuilder
    implements Builder<GSearchOpponentData, GSearchOpponentDataBuilder> {
  _$GSearchOpponentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _searchOpponent;
  String? get searchOpponent => _$this._searchOpponent;
  set searchOpponent(String? searchOpponent) =>
      _$this._searchOpponent = searchOpponent;

  GSearchOpponentDataBuilder() {
    GSearchOpponentData._initializeBuilder(this);
  }

  GSearchOpponentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _searchOpponent = $v.searchOpponent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchOpponentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchOpponentData;
  }

  @override
  void update(void Function(GSearchOpponentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSearchOpponentData build() {
    final _$result = _$v ??
        new _$GSearchOpponentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GSearchOpponentData', 'G__typename'),
            searchOpponent: BuiltValueNullFieldError.checkNotNull(
                searchOpponent, 'GSearchOpponentData', 'searchOpponent'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
