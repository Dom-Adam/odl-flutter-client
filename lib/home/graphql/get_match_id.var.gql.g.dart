// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_match_id.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetMatchIdVars> _$gGetMatchIdVarsSerializer =
    new _$GGetMatchIdVarsSerializer();

class _$GGetMatchIdVarsSerializer
    implements StructuredSerializer<GGetMatchIdVars> {
  @override
  final Iterable<Type> types = const [GGetMatchIdVars, _$GGetMatchIdVars];
  @override
  final String wireName = 'GGetMatchIdVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetMatchIdVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetMatchIdVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetMatchIdVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMatchIdVars extends GGetMatchIdVars {
  @override
  final String userId;

  factory _$GGetMatchIdVars([void Function(GGetMatchIdVarsBuilder)? updates]) =>
      (new GGetMatchIdVarsBuilder()..update(updates)).build();

  _$GGetMatchIdVars._({required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, 'GGetMatchIdVars', 'userId');
  }

  @override
  GGetMatchIdVars rebuild(void Function(GGetMatchIdVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMatchIdVarsBuilder toBuilder() =>
      new GGetMatchIdVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMatchIdVars && userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetMatchIdVars')
          ..add('userId', userId))
        .toString();
  }
}

class GGetMatchIdVarsBuilder
    implements Builder<GGetMatchIdVars, GGetMatchIdVarsBuilder> {
  _$GGetMatchIdVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GGetMatchIdVarsBuilder();

  GGetMatchIdVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMatchIdVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMatchIdVars;
  }

  @override
  void update(void Function(GGetMatchIdVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMatchIdVars build() {
    final _$result = _$v ??
        new _$GGetMatchIdVars._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, 'GGetMatchIdVars', 'userId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
