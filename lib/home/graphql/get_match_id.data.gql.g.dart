// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_match_id.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetMatchIdData> _$gGetMatchIdDataSerializer =
    new _$GGetMatchIdDataSerializer();
Serializer<GGetMatchIdData_getMatchId> _$gGetMatchIdDataGetMatchIdSerializer =
    new _$GGetMatchIdData_getMatchIdSerializer();
Serializer<GGetMatchIdData_getMatchId_players>
    _$gGetMatchIdDataGetMatchIdPlayersSerializer =
    new _$GGetMatchIdData_getMatchId_playersSerializer();
Serializer<GGetMatchIdData_getMatchId_legs>
    _$gGetMatchIdDataGetMatchIdLegsSerializer =
    new _$GGetMatchIdData_getMatchId_legsSerializer();

class _$GGetMatchIdDataSerializer
    implements StructuredSerializer<GGetMatchIdData> {
  @override
  final Iterable<Type> types = const [GGetMatchIdData, _$GGetMatchIdData];
  @override
  final String wireName = 'GGetMatchIdData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetMatchIdData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getMatchId',
      serializers.serialize(object.getMatchId,
          specifiedType: const FullType(GGetMatchIdData_getMatchId)),
    ];

    return result;
  }

  @override
  GGetMatchIdData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMatchIdDataBuilder();

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
        case 'getMatchId':
          result.getMatchId.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetMatchIdData_getMatchId))!
              as GGetMatchIdData_getMatchId);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMatchIdData_getMatchIdSerializer
    implements StructuredSerializer<GGetMatchIdData_getMatchId> {
  @override
  final Iterable<Type> types = const [
    GGetMatchIdData_getMatchId,
    _$GGetMatchIdData_getMatchId
  ];
  @override
  final String wireName = 'GGetMatchIdData_getMatchId';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetMatchIdData_getMatchId object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'players',
      serializers.serialize(object.players,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGetMatchIdData_getMatchId_players)])),
      'legs',
      serializers.serialize(object.legs,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGetMatchIdData_getMatchId_legs)])),
    ];

    return result;
  }

  @override
  GGetMatchIdData_getMatchId deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMatchIdData_getMatchIdBuilder();

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
        case 'players':
          result.players.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetMatchIdData_getMatchId_players)
              ]))! as BuiltList<Object?>);
          break;
        case 'legs':
          result.legs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetMatchIdData_getMatchId_legs)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMatchIdData_getMatchId_playersSerializer
    implements StructuredSerializer<GGetMatchIdData_getMatchId_players> {
  @override
  final Iterable<Type> types = const [
    GGetMatchIdData_getMatchId_players,
    _$GGetMatchIdData_getMatchId_players
  ];
  @override
  final String wireName = 'GGetMatchIdData_getMatchId_players';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetMatchIdData_getMatchId_players object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetMatchIdData_getMatchId_players deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMatchIdData_getMatchId_playersBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
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

class _$GGetMatchIdData_getMatchId_legsSerializer
    implements StructuredSerializer<GGetMatchIdData_getMatchId_legs> {
  @override
  final Iterable<Type> types = const [
    GGetMatchIdData_getMatchId_legs,
    _$GGetMatchIdData_getMatchId_legs
  ];
  @override
  final String wireName = 'GGetMatchIdData_getMatchId_legs';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetMatchIdData_getMatchId_legs object,
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
  GGetMatchIdData_getMatchId_legs deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMatchIdData_getMatchId_legsBuilder();

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

class _$GGetMatchIdData extends GGetMatchIdData {
  @override
  final String G__typename;
  @override
  final GGetMatchIdData_getMatchId getMatchId;

  factory _$GGetMatchIdData([void Function(GGetMatchIdDataBuilder)? updates]) =>
      (new GGetMatchIdDataBuilder()..update(updates)).build();

  _$GGetMatchIdData._({required this.G__typename, required this.getMatchId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetMatchIdData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getMatchId, 'GGetMatchIdData', 'getMatchId');
  }

  @override
  GGetMatchIdData rebuild(void Function(GGetMatchIdDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMatchIdDataBuilder toBuilder() =>
      new GGetMatchIdDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMatchIdData &&
        G__typename == other.G__typename &&
        getMatchId == other.getMatchId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getMatchId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMatchIdData')
          ..add('G__typename', G__typename)
          ..add('getMatchId', getMatchId))
        .toString();
  }
}

class GGetMatchIdDataBuilder
    implements Builder<GGetMatchIdData, GGetMatchIdDataBuilder> {
  _$GGetMatchIdData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetMatchIdData_getMatchIdBuilder? _getMatchId;
  GGetMatchIdData_getMatchIdBuilder get getMatchId =>
      _$this._getMatchId ??= new GGetMatchIdData_getMatchIdBuilder();
  set getMatchId(GGetMatchIdData_getMatchIdBuilder? getMatchId) =>
      _$this._getMatchId = getMatchId;

  GGetMatchIdDataBuilder() {
    GGetMatchIdData._initializeBuilder(this);
  }

  GGetMatchIdDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getMatchId = $v.getMatchId.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMatchIdData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMatchIdData;
  }

  @override
  void update(void Function(GGetMatchIdDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMatchIdData build() {
    _$GGetMatchIdData _$result;
    try {
      _$result = _$v ??
          new _$GGetMatchIdData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetMatchIdData', 'G__typename'),
              getMatchId: getMatchId.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getMatchId';
        getMatchId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetMatchIdData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetMatchIdData_getMatchId extends GGetMatchIdData_getMatchId {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final BuiltList<GGetMatchIdData_getMatchId_players> players;
  @override
  final BuiltList<GGetMatchIdData_getMatchId_legs> legs;

  factory _$GGetMatchIdData_getMatchId(
          [void Function(GGetMatchIdData_getMatchIdBuilder)? updates]) =>
      (new GGetMatchIdData_getMatchIdBuilder()..update(updates)).build();

  _$GGetMatchIdData_getMatchId._(
      {required this.G__typename,
      required this.id,
      required this.players,
      required this.legs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetMatchIdData_getMatchId', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetMatchIdData_getMatchId', 'id');
    BuiltValueNullFieldError.checkNotNull(
        players, 'GGetMatchIdData_getMatchId', 'players');
    BuiltValueNullFieldError.checkNotNull(
        legs, 'GGetMatchIdData_getMatchId', 'legs');
  }

  @override
  GGetMatchIdData_getMatchId rebuild(
          void Function(GGetMatchIdData_getMatchIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMatchIdData_getMatchIdBuilder toBuilder() =>
      new GGetMatchIdData_getMatchIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMatchIdData_getMatchId &&
        G__typename == other.G__typename &&
        id == other.id &&
        players == other.players &&
        legs == other.legs;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), players.hashCode),
        legs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMatchIdData_getMatchId')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('players', players)
          ..add('legs', legs))
        .toString();
  }
}

class GGetMatchIdData_getMatchIdBuilder
    implements
        Builder<GGetMatchIdData_getMatchId, GGetMatchIdData_getMatchIdBuilder> {
  _$GGetMatchIdData_getMatchId? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<GGetMatchIdData_getMatchId_players>? _players;
  ListBuilder<GGetMatchIdData_getMatchId_players> get players =>
      _$this._players ??= new ListBuilder<GGetMatchIdData_getMatchId_players>();
  set players(ListBuilder<GGetMatchIdData_getMatchId_players>? players) =>
      _$this._players = players;

  ListBuilder<GGetMatchIdData_getMatchId_legs>? _legs;
  ListBuilder<GGetMatchIdData_getMatchId_legs> get legs =>
      _$this._legs ??= new ListBuilder<GGetMatchIdData_getMatchId_legs>();
  set legs(ListBuilder<GGetMatchIdData_getMatchId_legs>? legs) =>
      _$this._legs = legs;

  GGetMatchIdData_getMatchIdBuilder() {
    GGetMatchIdData_getMatchId._initializeBuilder(this);
  }

  GGetMatchIdData_getMatchIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _players = $v.players.toBuilder();
      _legs = $v.legs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMatchIdData_getMatchId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMatchIdData_getMatchId;
  }

  @override
  void update(void Function(GGetMatchIdData_getMatchIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMatchIdData_getMatchId build() {
    _$GGetMatchIdData_getMatchId _$result;
    try {
      _$result = _$v ??
          new _$GGetMatchIdData_getMatchId._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetMatchIdData_getMatchId', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetMatchIdData_getMatchId', 'id'),
              players: players.build(),
              legs: legs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'players';
        players.build();
        _$failedField = 'legs';
        legs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetMatchIdData_getMatchId', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetMatchIdData_getMatchId_players
    extends GGetMatchIdData_getMatchId_players {
  @override
  final String G__typename;
  @override
  final String username;
  @override
  final String id;

  factory _$GGetMatchIdData_getMatchId_players(
          [void Function(GGetMatchIdData_getMatchId_playersBuilder)?
              updates]) =>
      (new GGetMatchIdData_getMatchId_playersBuilder()..update(updates))
          .build();

  _$GGetMatchIdData_getMatchId_players._(
      {required this.G__typename, required this.username, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetMatchIdData_getMatchId_players', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GGetMatchIdData_getMatchId_players', 'username');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetMatchIdData_getMatchId_players', 'id');
  }

  @override
  GGetMatchIdData_getMatchId_players rebuild(
          void Function(GGetMatchIdData_getMatchId_playersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMatchIdData_getMatchId_playersBuilder toBuilder() =>
      new GGetMatchIdData_getMatchId_playersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMatchIdData_getMatchId_players &&
        G__typename == other.G__typename &&
        username == other.username &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), username.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMatchIdData_getMatchId_players')
          ..add('G__typename', G__typename)
          ..add('username', username)
          ..add('id', id))
        .toString();
  }
}

class GGetMatchIdData_getMatchId_playersBuilder
    implements
        Builder<GGetMatchIdData_getMatchId_players,
            GGetMatchIdData_getMatchId_playersBuilder> {
  _$GGetMatchIdData_getMatchId_players? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetMatchIdData_getMatchId_playersBuilder() {
    GGetMatchIdData_getMatchId_players._initializeBuilder(this);
  }

  GGetMatchIdData_getMatchId_playersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _username = $v.username;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMatchIdData_getMatchId_players other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMatchIdData_getMatchId_players;
  }

  @override
  void update(
      void Function(GGetMatchIdData_getMatchId_playersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMatchIdData_getMatchId_players build() {
    final _$result = _$v ??
        new _$GGetMatchIdData_getMatchId_players._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetMatchIdData_getMatchId_players', 'G__typename'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GGetMatchIdData_getMatchId_players', 'username'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetMatchIdData_getMatchId_players', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetMatchIdData_getMatchId_legs
    extends GGetMatchIdData_getMatchId_legs {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GGetMatchIdData_getMatchId_legs(
          [void Function(GGetMatchIdData_getMatchId_legsBuilder)? updates]) =>
      (new GGetMatchIdData_getMatchId_legsBuilder()..update(updates)).build();

  _$GGetMatchIdData_getMatchId_legs._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetMatchIdData_getMatchId_legs', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetMatchIdData_getMatchId_legs', 'id');
  }

  @override
  GGetMatchIdData_getMatchId_legs rebuild(
          void Function(GGetMatchIdData_getMatchId_legsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMatchIdData_getMatchId_legsBuilder toBuilder() =>
      new GGetMatchIdData_getMatchId_legsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMatchIdData_getMatchId_legs &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMatchIdData_getMatchId_legs')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GGetMatchIdData_getMatchId_legsBuilder
    implements
        Builder<GGetMatchIdData_getMatchId_legs,
            GGetMatchIdData_getMatchId_legsBuilder> {
  _$GGetMatchIdData_getMatchId_legs? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetMatchIdData_getMatchId_legsBuilder() {
    GGetMatchIdData_getMatchId_legs._initializeBuilder(this);
  }

  GGetMatchIdData_getMatchId_legsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMatchIdData_getMatchId_legs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMatchIdData_getMatchId_legs;
  }

  @override
  void update(void Function(GGetMatchIdData_getMatchId_legsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMatchIdData_getMatchId_legs build() {
    final _$result = _$v ??
        new _$GGetMatchIdData_getMatchId_legs._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetMatchIdData_getMatchId_legs', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetMatchIdData_getMatchId_legs', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
