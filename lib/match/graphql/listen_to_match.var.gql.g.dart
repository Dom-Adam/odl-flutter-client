// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listen_to_match.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GListenToMatchVars> _$gListenToMatchVarsSerializer =
    new _$GListenToMatchVarsSerializer();

class _$GListenToMatchVarsSerializer
    implements StructuredSerializer<GListenToMatchVars> {
  @override
  final Iterable<Type> types = const [GListenToMatchVars, _$GListenToMatchVars];
  @override
  final String wireName = 'GListenToMatchVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListenToMatchVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'matchId',
      serializers.serialize(object.matchId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GListenToMatchVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListenToMatchVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'matchId':
          result.matchId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GListenToMatchVars extends GListenToMatchVars {
  @override
  final String matchId;

  factory _$GListenToMatchVars(
          [void Function(GListenToMatchVarsBuilder)? updates]) =>
      (new GListenToMatchVarsBuilder()..update(updates)).build();

  _$GListenToMatchVars._({required this.matchId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        matchId, 'GListenToMatchVars', 'matchId');
  }

  @override
  GListenToMatchVars rebuild(
          void Function(GListenToMatchVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListenToMatchVarsBuilder toBuilder() =>
      new GListenToMatchVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListenToMatchVars && matchId == other.matchId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, matchId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GListenToMatchVars')
          ..add('matchId', matchId))
        .toString();
  }
}

class GListenToMatchVarsBuilder
    implements Builder<GListenToMatchVars, GListenToMatchVarsBuilder> {
  _$GListenToMatchVars? _$v;

  String? _matchId;
  String? get matchId => _$this._matchId;
  set matchId(String? matchId) => _$this._matchId = matchId;

  GListenToMatchVarsBuilder();

  GListenToMatchVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _matchId = $v.matchId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListenToMatchVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListenToMatchVars;
  }

  @override
  void update(void Function(GListenToMatchVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GListenToMatchVars build() {
    final _$result = _$v ??
        new _$GListenToMatchVars._(
            matchId: BuiltValueNullFieldError.checkNotNull(
                matchId, 'GListenToMatchVars', 'matchId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
