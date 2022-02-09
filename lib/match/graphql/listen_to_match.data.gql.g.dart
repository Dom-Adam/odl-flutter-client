// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listen_to_match.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GListenToMatchData> _$gListenToMatchDataSerializer =
    new _$GListenToMatchDataSerializer();
Serializer<GListenToMatchData_listenToMatch>
    _$gListenToMatchDataListenToMatchSerializer =
    new _$GListenToMatchData_listenToMatchSerializer();
Serializer<GListenToMatchData_listenToMatch_legs>
    _$gListenToMatchDataListenToMatchLegsSerializer =
    new _$GListenToMatchData_listenToMatch_legsSerializer();
Serializer<GListenToMatchData_listenToMatch_legs_visits>
    _$gListenToMatchDataListenToMatchLegsVisitsSerializer =
    new _$GListenToMatchData_listenToMatch_legs_visitsSerializer();

class _$GListenToMatchDataSerializer
    implements StructuredSerializer<GListenToMatchData> {
  @override
  final Iterable<Type> types = const [GListenToMatchData, _$GListenToMatchData];
  @override
  final String wireName = 'GListenToMatchData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListenToMatchData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'listenToMatch',
      serializers.serialize(object.listenToMatch,
          specifiedType: const FullType(GListenToMatchData_listenToMatch)),
    ];

    return result;
  }

  @override
  GListenToMatchData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListenToMatchDataBuilder();

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
        case 'listenToMatch':
          result.listenToMatch.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GListenToMatchData_listenToMatch))!
              as GListenToMatchData_listenToMatch);
          break;
      }
    }

    return result.build();
  }
}

class _$GListenToMatchData_listenToMatchSerializer
    implements StructuredSerializer<GListenToMatchData_listenToMatch> {
  @override
  final Iterable<Type> types = const [
    GListenToMatchData_listenToMatch,
    _$GListenToMatchData_listenToMatch
  ];
  @override
  final String wireName = 'GListenToMatchData_listenToMatch';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListenToMatchData_listenToMatch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'legs',
      serializers.serialize(object.legs,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GListenToMatchData_listenToMatch_legs)])),
    ];

    return result;
  }

  @override
  GListenToMatchData_listenToMatch deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListenToMatchData_listenToMatchBuilder();

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
        case 'legs':
          result.legs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GListenToMatchData_listenToMatch_legs)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GListenToMatchData_listenToMatch_legsSerializer
    implements StructuredSerializer<GListenToMatchData_listenToMatch_legs> {
  @override
  final Iterable<Type> types = const [
    GListenToMatchData_listenToMatch_legs,
    _$GListenToMatchData_listenToMatch_legs
  ];
  @override
  final String wireName = 'GListenToMatchData_listenToMatch_legs';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListenToMatchData_listenToMatch_legs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'points',
      serializers.serialize(object.points,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'isFinished',
      serializers.serialize(object.isFinished,
          specifiedType: const FullType(bool)),
      'visits',
      serializers.serialize(object.visits,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GListenToMatchData_listenToMatch_legs_visits)
          ])),
    ];

    return result;
  }

  @override
  GListenToMatchData_listenToMatch_legs deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListenToMatchData_listenToMatch_legsBuilder();

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
        case 'points':
          result.points.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'isFinished':
          result.isFinished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'visits':
          result.visits.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GListenToMatchData_listenToMatch_legs_visits)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GListenToMatchData_listenToMatch_legs_visitsSerializer
    implements
        StructuredSerializer<GListenToMatchData_listenToMatch_legs_visits> {
  @override
  final Iterable<Type> types = const [
    GListenToMatchData_listenToMatch_legs_visits,
    _$GListenToMatchData_listenToMatch_legs_visits
  ];
  @override
  final String wireName = 'GListenToMatchData_listenToMatch_legs_visits';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GListenToMatchData_listenToMatch_legs_visits object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'playerId',
      serializers.serialize(object.playerId,
          specifiedType: const FullType(String)),
      'isFinished',
      serializers.serialize(object.isFinished,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GListenToMatchData_listenToMatch_legs_visits deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListenToMatchData_listenToMatch_legs_visitsBuilder();

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
        case 'playerId':
          result.playerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isFinished':
          result.isFinished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GListenToMatchData extends GListenToMatchData {
  @override
  final String G__typename;
  @override
  final GListenToMatchData_listenToMatch listenToMatch;

  factory _$GListenToMatchData(
          [void Function(GListenToMatchDataBuilder)? updates]) =>
      (new GListenToMatchDataBuilder()..update(updates)).build();

  _$GListenToMatchData._(
      {required this.G__typename, required this.listenToMatch})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GListenToMatchData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        listenToMatch, 'GListenToMatchData', 'listenToMatch');
  }

  @override
  GListenToMatchData rebuild(
          void Function(GListenToMatchDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListenToMatchDataBuilder toBuilder() =>
      new GListenToMatchDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListenToMatchData &&
        G__typename == other.G__typename &&
        listenToMatch == other.listenToMatch;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), listenToMatch.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GListenToMatchData')
          ..add('G__typename', G__typename)
          ..add('listenToMatch', listenToMatch))
        .toString();
  }
}

class GListenToMatchDataBuilder
    implements Builder<GListenToMatchData, GListenToMatchDataBuilder> {
  _$GListenToMatchData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GListenToMatchData_listenToMatchBuilder? _listenToMatch;
  GListenToMatchData_listenToMatchBuilder get listenToMatch =>
      _$this._listenToMatch ??= new GListenToMatchData_listenToMatchBuilder();
  set listenToMatch(GListenToMatchData_listenToMatchBuilder? listenToMatch) =>
      _$this._listenToMatch = listenToMatch;

  GListenToMatchDataBuilder() {
    GListenToMatchData._initializeBuilder(this);
  }

  GListenToMatchDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _listenToMatch = $v.listenToMatch.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListenToMatchData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListenToMatchData;
  }

  @override
  void update(void Function(GListenToMatchDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GListenToMatchData build() {
    _$GListenToMatchData _$result;
    try {
      _$result = _$v ??
          new _$GListenToMatchData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GListenToMatchData', 'G__typename'),
              listenToMatch: listenToMatch.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listenToMatch';
        listenToMatch.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GListenToMatchData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListenToMatchData_listenToMatch
    extends GListenToMatchData_listenToMatch {
  @override
  final String G__typename;
  @override
  final BuiltList<GListenToMatchData_listenToMatch_legs> legs;

  factory _$GListenToMatchData_listenToMatch(
          [void Function(GListenToMatchData_listenToMatchBuilder)? updates]) =>
      (new GListenToMatchData_listenToMatchBuilder()..update(updates)).build();

  _$GListenToMatchData_listenToMatch._(
      {required this.G__typename, required this.legs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GListenToMatchData_listenToMatch', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        legs, 'GListenToMatchData_listenToMatch', 'legs');
  }

  @override
  GListenToMatchData_listenToMatch rebuild(
          void Function(GListenToMatchData_listenToMatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListenToMatchData_listenToMatchBuilder toBuilder() =>
      new GListenToMatchData_listenToMatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListenToMatchData_listenToMatch &&
        G__typename == other.G__typename &&
        legs == other.legs;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), legs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GListenToMatchData_listenToMatch')
          ..add('G__typename', G__typename)
          ..add('legs', legs))
        .toString();
  }
}

class GListenToMatchData_listenToMatchBuilder
    implements
        Builder<GListenToMatchData_listenToMatch,
            GListenToMatchData_listenToMatchBuilder> {
  _$GListenToMatchData_listenToMatch? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GListenToMatchData_listenToMatch_legs>? _legs;
  ListBuilder<GListenToMatchData_listenToMatch_legs> get legs =>
      _$this._legs ??= new ListBuilder<GListenToMatchData_listenToMatch_legs>();
  set legs(ListBuilder<GListenToMatchData_listenToMatch_legs>? legs) =>
      _$this._legs = legs;

  GListenToMatchData_listenToMatchBuilder() {
    GListenToMatchData_listenToMatch._initializeBuilder(this);
  }

  GListenToMatchData_listenToMatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _legs = $v.legs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListenToMatchData_listenToMatch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListenToMatchData_listenToMatch;
  }

  @override
  void update(void Function(GListenToMatchData_listenToMatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GListenToMatchData_listenToMatch build() {
    _$GListenToMatchData_listenToMatch _$result;
    try {
      _$result = _$v ??
          new _$GListenToMatchData_listenToMatch._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GListenToMatchData_listenToMatch', 'G__typename'),
              legs: legs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'legs';
        legs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GListenToMatchData_listenToMatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListenToMatchData_listenToMatch_legs
    extends GListenToMatchData_listenToMatch_legs {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final BuiltList<int> points;
  @override
  final bool isFinished;
  @override
  final BuiltList<GListenToMatchData_listenToMatch_legs_visits> visits;

  factory _$GListenToMatchData_listenToMatch_legs(
          [void Function(GListenToMatchData_listenToMatch_legsBuilder)?
              updates]) =>
      (new GListenToMatchData_listenToMatch_legsBuilder()..update(updates))
          .build();

  _$GListenToMatchData_listenToMatch_legs._(
      {required this.G__typename,
      required this.id,
      required this.points,
      required this.isFinished,
      required this.visits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GListenToMatchData_listenToMatch_legs', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GListenToMatchData_listenToMatch_legs', 'id');
    BuiltValueNullFieldError.checkNotNull(
        points, 'GListenToMatchData_listenToMatch_legs', 'points');
    BuiltValueNullFieldError.checkNotNull(
        isFinished, 'GListenToMatchData_listenToMatch_legs', 'isFinished');
    BuiltValueNullFieldError.checkNotNull(
        visits, 'GListenToMatchData_listenToMatch_legs', 'visits');
  }

  @override
  GListenToMatchData_listenToMatch_legs rebuild(
          void Function(GListenToMatchData_listenToMatch_legsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListenToMatchData_listenToMatch_legsBuilder toBuilder() =>
      new GListenToMatchData_listenToMatch_legsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListenToMatchData_listenToMatch_legs &&
        G__typename == other.G__typename &&
        id == other.id &&
        points == other.points &&
        isFinished == other.isFinished &&
        visits == other.visits;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                points.hashCode),
            isFinished.hashCode),
        visits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GListenToMatchData_listenToMatch_legs')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('points', points)
          ..add('isFinished', isFinished)
          ..add('visits', visits))
        .toString();
  }
}

class GListenToMatchData_listenToMatch_legsBuilder
    implements
        Builder<GListenToMatchData_listenToMatch_legs,
            GListenToMatchData_listenToMatch_legsBuilder> {
  _$GListenToMatchData_listenToMatch_legs? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<int>? _points;
  ListBuilder<int> get points => _$this._points ??= new ListBuilder<int>();
  set points(ListBuilder<int>? points) => _$this._points = points;

  bool? _isFinished;
  bool? get isFinished => _$this._isFinished;
  set isFinished(bool? isFinished) => _$this._isFinished = isFinished;

  ListBuilder<GListenToMatchData_listenToMatch_legs_visits>? _visits;
  ListBuilder<GListenToMatchData_listenToMatch_legs_visits> get visits =>
      _$this._visits ??=
          new ListBuilder<GListenToMatchData_listenToMatch_legs_visits>();
  set visits(
          ListBuilder<GListenToMatchData_listenToMatch_legs_visits>? visits) =>
      _$this._visits = visits;

  GListenToMatchData_listenToMatch_legsBuilder() {
    GListenToMatchData_listenToMatch_legs._initializeBuilder(this);
  }

  GListenToMatchData_listenToMatch_legsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _points = $v.points.toBuilder();
      _isFinished = $v.isFinished;
      _visits = $v.visits.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListenToMatchData_listenToMatch_legs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListenToMatchData_listenToMatch_legs;
  }

  @override
  void update(
      void Function(GListenToMatchData_listenToMatch_legsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GListenToMatchData_listenToMatch_legs build() {
    _$GListenToMatchData_listenToMatch_legs _$result;
    try {
      _$result = _$v ??
          new _$GListenToMatchData_listenToMatch_legs._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GListenToMatchData_listenToMatch_legs', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GListenToMatchData_listenToMatch_legs', 'id'),
              points: points.build(),
              isFinished: BuiltValueNullFieldError.checkNotNull(isFinished,
                  'GListenToMatchData_listenToMatch_legs', 'isFinished'),
              visits: visits.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        points.build();

        _$failedField = 'visits';
        visits.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GListenToMatchData_listenToMatch_legs',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListenToMatchData_listenToMatch_legs_visits
    extends GListenToMatchData_listenToMatch_legs_visits {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String playerId;
  @override
  final bool isFinished;

  factory _$GListenToMatchData_listenToMatch_legs_visits(
          [void Function(GListenToMatchData_listenToMatch_legs_visitsBuilder)?
              updates]) =>
      (new GListenToMatchData_listenToMatch_legs_visitsBuilder()
            ..update(updates))
          .build();

  _$GListenToMatchData_listenToMatch_legs_visits._(
      {required this.G__typename,
      required this.id,
      required this.playerId,
      required this.isFinished})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GListenToMatchData_listenToMatch_legs_visits', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GListenToMatchData_listenToMatch_legs_visits', 'id');
    BuiltValueNullFieldError.checkNotNull(
        playerId, 'GListenToMatchData_listenToMatch_legs_visits', 'playerId');
    BuiltValueNullFieldError.checkNotNull(isFinished,
        'GListenToMatchData_listenToMatch_legs_visits', 'isFinished');
  }

  @override
  GListenToMatchData_listenToMatch_legs_visits rebuild(
          void Function(GListenToMatchData_listenToMatch_legs_visitsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListenToMatchData_listenToMatch_legs_visitsBuilder toBuilder() =>
      new GListenToMatchData_listenToMatch_legs_visitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListenToMatchData_listenToMatch_legs_visits &&
        G__typename == other.G__typename &&
        id == other.id &&
        playerId == other.playerId &&
        isFinished == other.isFinished;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), playerId.hashCode),
        isFinished.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GListenToMatchData_listenToMatch_legs_visits')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('playerId', playerId)
          ..add('isFinished', isFinished))
        .toString();
  }
}

class GListenToMatchData_listenToMatch_legs_visitsBuilder
    implements
        Builder<GListenToMatchData_listenToMatch_legs_visits,
            GListenToMatchData_listenToMatch_legs_visitsBuilder> {
  _$GListenToMatchData_listenToMatch_legs_visits? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _playerId;
  String? get playerId => _$this._playerId;
  set playerId(String? playerId) => _$this._playerId = playerId;

  bool? _isFinished;
  bool? get isFinished => _$this._isFinished;
  set isFinished(bool? isFinished) => _$this._isFinished = isFinished;

  GListenToMatchData_listenToMatch_legs_visitsBuilder() {
    GListenToMatchData_listenToMatch_legs_visits._initializeBuilder(this);
  }

  GListenToMatchData_listenToMatch_legs_visitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _playerId = $v.playerId;
      _isFinished = $v.isFinished;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListenToMatchData_listenToMatch_legs_visits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListenToMatchData_listenToMatch_legs_visits;
  }

  @override
  void update(
      void Function(GListenToMatchData_listenToMatch_legs_visitsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GListenToMatchData_listenToMatch_legs_visits build() {
    final _$result = _$v ??
        new _$GListenToMatchData_listenToMatch_legs_visits._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GListenToMatchData_listenToMatch_legs_visits', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GListenToMatchData_listenToMatch_legs_visits', 'id'),
            playerId: BuiltValueNullFieldError.checkNotNull(playerId,
                'GListenToMatchData_listenToMatch_legs_visits', 'playerId'),
            isFinished: BuiltValueNullFieldError.checkNotNull(isFinished,
                'GListenToMatchData_listenToMatch_legs_visits', 'isFinished'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
