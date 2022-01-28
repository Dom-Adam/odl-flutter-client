// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_opponent.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSearchOpponentVars> _$gSearchOpponentVarsSerializer =
    new _$GSearchOpponentVarsSerializer();

class _$GSearchOpponentVarsSerializer
    implements StructuredSerializer<GSearchOpponentVars> {
  @override
  final Iterable<Type> types = const [
    GSearchOpponentVars,
    _$GSearchOpponentVars
  ];
  @override
  final String wireName = 'GSearchOpponentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchOpponentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GSearchOpponentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GSearchOpponentVarsBuilder().build();
  }
}

class _$GSearchOpponentVars extends GSearchOpponentVars {
  factory _$GSearchOpponentVars(
          [void Function(GSearchOpponentVarsBuilder)? updates]) =>
      (new GSearchOpponentVarsBuilder()..update(updates)).build();

  _$GSearchOpponentVars._() : super._();

  @override
  GSearchOpponentVars rebuild(
          void Function(GSearchOpponentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchOpponentVarsBuilder toBuilder() =>
      new GSearchOpponentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchOpponentVars;
  }

  @override
  int get hashCode {
    return 111207851;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GSearchOpponentVars').toString();
  }
}

class GSearchOpponentVarsBuilder
    implements Builder<GSearchOpponentVars, GSearchOpponentVarsBuilder> {
  _$GSearchOpponentVars? _$v;

  GSearchOpponentVarsBuilder();

  @override
  void replace(GSearchOpponentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchOpponentVars;
  }

  @override
  void update(void Function(GSearchOpponentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSearchOpponentVars build() {
    final _$result = _$v ?? new _$GSearchOpponentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
