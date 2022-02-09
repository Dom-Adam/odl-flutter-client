// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_match.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateMatchVars> _$gUpdateMatchVarsSerializer =
    new _$GUpdateMatchVarsSerializer();

class _$GUpdateMatchVarsSerializer
    implements StructuredSerializer<GUpdateMatchVars> {
  @override
  final Iterable<Type> types = const [GUpdateMatchVars, _$GUpdateMatchVars];
  @override
  final String wireName = 'GUpdateMatchVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateMatchVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'score',
      serializers.serialize(object.score,
          specifiedType: const FullType(_i1.GUpdateMatchInput)),
    ];

    return result;
  }

  @override
  GUpdateMatchVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateMatchVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'score':
          result.score.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUpdateMatchInput))!
              as _i1.GUpdateMatchInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateMatchVars extends GUpdateMatchVars {
  @override
  final _i1.GUpdateMatchInput score;

  factory _$GUpdateMatchVars(
          [void Function(GUpdateMatchVarsBuilder)? updates]) =>
      (new GUpdateMatchVarsBuilder()..update(updates)).build();

  _$GUpdateMatchVars._({required this.score}) : super._() {
    BuiltValueNullFieldError.checkNotNull(score, 'GUpdateMatchVars', 'score');
  }

  @override
  GUpdateMatchVars rebuild(void Function(GUpdateMatchVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateMatchVarsBuilder toBuilder() =>
      new GUpdateMatchVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateMatchVars && score == other.score;
  }

  @override
  int get hashCode {
    return $jf($jc(0, score.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateMatchVars')
          ..add('score', score))
        .toString();
  }
}

class GUpdateMatchVarsBuilder
    implements Builder<GUpdateMatchVars, GUpdateMatchVarsBuilder> {
  _$GUpdateMatchVars? _$v;

  _i1.GUpdateMatchInputBuilder? _score;
  _i1.GUpdateMatchInputBuilder get score =>
      _$this._score ??= new _i1.GUpdateMatchInputBuilder();
  set score(_i1.GUpdateMatchInputBuilder? score) => _$this._score = score;

  GUpdateMatchVarsBuilder();

  GUpdateMatchVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _score = $v.score.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateMatchVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateMatchVars;
  }

  @override
  void update(void Function(GUpdateMatchVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateMatchVars build() {
    _$GUpdateMatchVars _$result;
    try {
      _$result = _$v ?? new _$GUpdateMatchVars._(score: score.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'score';
        score.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateMatchVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
