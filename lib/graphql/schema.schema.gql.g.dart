// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateUserInput> _$gCreateUserInputSerializer =
    new _$GCreateUserInputSerializer();
Serializer<GUpdateUserInput> _$gUpdateUserInputSerializer =
    new _$GUpdateUserInputSerializer();
Serializer<GUpdateMatchInput> _$gUpdateMatchInputSerializer =
    new _$GUpdateMatchInputSerializer();

class _$GCreateUserInputSerializer
    implements StructuredSerializer<GCreateUserInput> {
  @override
  final Iterable<Type> types = const [GCreateUserInput, _$GCreateUserInput];
  @override
  final String wireName = 'GCreateUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserInputSerializer
    implements StructuredSerializer<GUpdateUserInput> {
  @override
  final Iterable<Type> types = const [GUpdateUserInput, _$GUpdateUserInput];
  @override
  final String wireName = 'GUpdateUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GUpdateMatchInputSerializer
    implements StructuredSerializer<GUpdateMatchInput> {
  @override
  final Iterable<Type> types = const [GUpdateMatchInput, _$GUpdateMatchInput];
  @override
  final String wireName = 'GUpdateMatchInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateMatchInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'field',
      serializers.serialize(object.field, specifiedType: const FullType(int)),
      'segment',
      serializers.serialize(object.segment, specifiedType: const FullType(int)),
      'matchId',
      serializers.serialize(object.matchId,
          specifiedType: const FullType(String)),
      'legId',
      serializers.serialize(object.legId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.exampleField;
    if (value != null) {
      result
        ..add('exampleField')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUpdateMatchInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateMatchInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'exampleField':
          result.exampleField = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'field':
          result.field = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'segment':
          result.segment = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'matchId':
          result.matchId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'legId':
          result.legId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserInput extends GCreateUserInput {
  @override
  final String username;
  @override
  final String email;
  @override
  final String password;

  factory _$GCreateUserInput(
          [void Function(GCreateUserInputBuilder)? updates]) =>
      (new GCreateUserInputBuilder()..update(updates)).build();

  _$GCreateUserInput._(
      {required this.username, required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'GCreateUserInput', 'username');
    BuiltValueNullFieldError.checkNotNull(email, 'GCreateUserInput', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, 'GCreateUserInput', 'password');
  }

  @override
  GCreateUserInput rebuild(void Function(GCreateUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserInputBuilder toBuilder() =>
      new GCreateUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserInput &&
        username == other.username &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, username.hashCode), email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateUserInput')
          ..add('username', username)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GCreateUserInputBuilder
    implements Builder<GCreateUserInput, GCreateUserInputBuilder> {
  _$GCreateUserInput? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GCreateUserInputBuilder();

  GCreateUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserInput;
  }

  @override
  void update(void Function(GCreateUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateUserInput build() {
    final _$result = _$v ??
        new _$GCreateUserInput._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GCreateUserInput', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GCreateUserInput', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'GCreateUserInput', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserInput extends GUpdateUserInput {
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String id;

  factory _$GUpdateUserInput(
          [void Function(GUpdateUserInputBuilder)? updates]) =>
      (new GUpdateUserInputBuilder()..update(updates)).build();

  _$GUpdateUserInput._(
      {this.username, this.email, this.password, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GUpdateUserInput', 'id');
  }

  @override
  GUpdateUserInput rebuild(void Function(GUpdateUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserInputBuilder toBuilder() =>
      new GUpdateUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserInput &&
        username == other.username &&
        email == other.email &&
        password == other.password &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, username.hashCode), email.hashCode), password.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateUserInput')
          ..add('username', username)
          ..add('email', email)
          ..add('password', password)
          ..add('id', id))
        .toString();
  }
}

class GUpdateUserInputBuilder
    implements Builder<GUpdateUserInput, GUpdateUserInputBuilder> {
  _$GUpdateUserInput? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GUpdateUserInputBuilder();

  GUpdateUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _email = $v.email;
      _password = $v.password;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserInput;
  }

  @override
  void update(void Function(GUpdateUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateUserInput build() {
    final _$result = _$v ??
        new _$GUpdateUserInput._(
            username: username,
            email: email,
            password: password,
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GUpdateUserInput', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateMatchInput extends GUpdateMatchInput {
  @override
  final int? exampleField;
  @override
  final int field;
  @override
  final int segment;
  @override
  final String matchId;
  @override
  final String legId;

  factory _$GUpdateMatchInput(
          [void Function(GUpdateMatchInputBuilder)? updates]) =>
      (new GUpdateMatchInputBuilder()..update(updates)).build();

  _$GUpdateMatchInput._(
      {this.exampleField,
      required this.field,
      required this.segment,
      required this.matchId,
      required this.legId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(field, 'GUpdateMatchInput', 'field');
    BuiltValueNullFieldError.checkNotNull(
        segment, 'GUpdateMatchInput', 'segment');
    BuiltValueNullFieldError.checkNotNull(
        matchId, 'GUpdateMatchInput', 'matchId');
    BuiltValueNullFieldError.checkNotNull(legId, 'GUpdateMatchInput', 'legId');
  }

  @override
  GUpdateMatchInput rebuild(void Function(GUpdateMatchInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateMatchInputBuilder toBuilder() =>
      new GUpdateMatchInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateMatchInput &&
        exampleField == other.exampleField &&
        field == other.field &&
        segment == other.segment &&
        matchId == other.matchId &&
        legId == other.legId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, exampleField.hashCode), field.hashCode),
                segment.hashCode),
            matchId.hashCode),
        legId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateMatchInput')
          ..add('exampleField', exampleField)
          ..add('field', field)
          ..add('segment', segment)
          ..add('matchId', matchId)
          ..add('legId', legId))
        .toString();
  }
}

class GUpdateMatchInputBuilder
    implements Builder<GUpdateMatchInput, GUpdateMatchInputBuilder> {
  _$GUpdateMatchInput? _$v;

  int? _exampleField;
  int? get exampleField => _$this._exampleField;
  set exampleField(int? exampleField) => _$this._exampleField = exampleField;

  int? _field;
  int? get field => _$this._field;
  set field(int? field) => _$this._field = field;

  int? _segment;
  int? get segment => _$this._segment;
  set segment(int? segment) => _$this._segment = segment;

  String? _matchId;
  String? get matchId => _$this._matchId;
  set matchId(String? matchId) => _$this._matchId = matchId;

  String? _legId;
  String? get legId => _$this._legId;
  set legId(String? legId) => _$this._legId = legId;

  GUpdateMatchInputBuilder();

  GUpdateMatchInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exampleField = $v.exampleField;
      _field = $v.field;
      _segment = $v.segment;
      _matchId = $v.matchId;
      _legId = $v.legId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateMatchInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateMatchInput;
  }

  @override
  void update(void Function(GUpdateMatchInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateMatchInput build() {
    final _$result = _$v ??
        new _$GUpdateMatchInput._(
            exampleField: exampleField,
            field: BuiltValueNullFieldError.checkNotNull(
                field, 'GUpdateMatchInput', 'field'),
            segment: BuiltValueNullFieldError.checkNotNull(
                segment, 'GUpdateMatchInput', 'segment'),
            matchId: BuiltValueNullFieldError.checkNotNull(
                matchId, 'GUpdateMatchInput', 'matchId'),
            legId: BuiltValueNullFieldError.checkNotNull(
                legId, 'GUpdateMatchInput', 'legId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
