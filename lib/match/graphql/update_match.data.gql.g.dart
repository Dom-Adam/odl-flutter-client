// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_match.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateMatchData> _$gUpdateMatchDataSerializer =
    new _$GUpdateMatchDataSerializer();
Serializer<GUpdateMatchData_updateMatch>
    _$gUpdateMatchDataUpdateMatchSerializer =
    new _$GUpdateMatchData_updateMatchSerializer();

class _$GUpdateMatchDataSerializer
    implements StructuredSerializer<GUpdateMatchData> {
  @override
  final Iterable<Type> types = const [GUpdateMatchData, _$GUpdateMatchData];
  @override
  final String wireName = 'GUpdateMatchData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateMatchData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateMatch',
      serializers.serialize(object.updateMatch,
          specifiedType: const FullType(GUpdateMatchData_updateMatch)),
    ];

    return result;
  }

  @override
  GUpdateMatchData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateMatchDataBuilder();

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
        case 'updateMatch':
          result.updateMatch.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUpdateMatchData_updateMatch))!
              as GUpdateMatchData_updateMatch);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateMatchData_updateMatchSerializer
    implements StructuredSerializer<GUpdateMatchData_updateMatch> {
  @override
  final Iterable<Type> types = const [
    GUpdateMatchData_updateMatch,
    _$GUpdateMatchData_updateMatch
  ];
  @override
  final String wireName = 'GUpdateMatchData_updateMatch';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateMatchData_updateMatch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUpdateMatchData_updateMatch deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateMatchData_updateMatchBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateMatchData extends GUpdateMatchData {
  @override
  final String G__typename;
  @override
  final GUpdateMatchData_updateMatch updateMatch;

  factory _$GUpdateMatchData(
          [void Function(GUpdateMatchDataBuilder)? updates]) =>
      (new GUpdateMatchDataBuilder()..update(updates)).build();

  _$GUpdateMatchData._({required this.G__typename, required this.updateMatch})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdateMatchData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateMatch, 'GUpdateMatchData', 'updateMatch');
  }

  @override
  GUpdateMatchData rebuild(void Function(GUpdateMatchDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateMatchDataBuilder toBuilder() =>
      new GUpdateMatchDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateMatchData &&
        G__typename == other.G__typename &&
        updateMatch == other.updateMatch;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), updateMatch.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateMatchData')
          ..add('G__typename', G__typename)
          ..add('updateMatch', updateMatch))
        .toString();
  }
}

class GUpdateMatchDataBuilder
    implements Builder<GUpdateMatchData, GUpdateMatchDataBuilder> {
  _$GUpdateMatchData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateMatchData_updateMatchBuilder? _updateMatch;
  GUpdateMatchData_updateMatchBuilder get updateMatch =>
      _$this._updateMatch ??= new GUpdateMatchData_updateMatchBuilder();
  set updateMatch(GUpdateMatchData_updateMatchBuilder? updateMatch) =>
      _$this._updateMatch = updateMatch;

  GUpdateMatchDataBuilder() {
    GUpdateMatchData._initializeBuilder(this);
  }

  GUpdateMatchDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateMatch = $v.updateMatch.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateMatchData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateMatchData;
  }

  @override
  void update(void Function(GUpdateMatchDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateMatchData build() {
    _$GUpdateMatchData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateMatchData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUpdateMatchData', 'G__typename'),
              updateMatch: updateMatch.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateMatch';
        updateMatch.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateMatchData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateMatchData_updateMatch extends GUpdateMatchData_updateMatch {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GUpdateMatchData_updateMatch(
          [void Function(GUpdateMatchData_updateMatchBuilder)? updates]) =>
      (new GUpdateMatchData_updateMatchBuilder()..update(updates)).build();

  _$GUpdateMatchData_updateMatch._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdateMatchData_updateMatch', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GUpdateMatchData_updateMatch', 'id');
  }

  @override
  GUpdateMatchData_updateMatch rebuild(
          void Function(GUpdateMatchData_updateMatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateMatchData_updateMatchBuilder toBuilder() =>
      new GUpdateMatchData_updateMatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateMatchData_updateMatch &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateMatchData_updateMatch')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GUpdateMatchData_updateMatchBuilder
    implements
        Builder<GUpdateMatchData_updateMatch,
            GUpdateMatchData_updateMatchBuilder> {
  _$GUpdateMatchData_updateMatch? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GUpdateMatchData_updateMatchBuilder() {
    GUpdateMatchData_updateMatch._initializeBuilder(this);
  }

  GUpdateMatchData_updateMatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateMatchData_updateMatch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateMatchData_updateMatch;
  }

  @override
  void update(void Function(GUpdateMatchData_updateMatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateMatchData_updateMatch build() {
    final _$result = _$v ??
        new _$GUpdateMatchData_updateMatch._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GUpdateMatchData_updateMatch', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GUpdateMatchData_updateMatch', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
