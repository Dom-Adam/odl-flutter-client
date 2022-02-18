// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:odl_flutter_client/graphql/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GCreateUserInput
    implements Built<GCreateUserInput, GCreateUserInputBuilder> {
  GCreateUserInput._();

  factory GCreateUserInput([Function(GCreateUserInputBuilder b) updates]) =
      _$GCreateUserInput;

  String get username;
  String get email;
  String get password;
  static Serializer<GCreateUserInput> get serializer =>
      _$gCreateUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateUserInput.serializer, this)
          as Map<String, dynamic>);
  static GCreateUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateUserInput.serializer, json);
}

abstract class GUpdateUserInput
    implements Built<GUpdateUserInput, GUpdateUserInputBuilder> {
  GUpdateUserInput._();

  factory GUpdateUserInput([Function(GUpdateUserInputBuilder b) updates]) =
      _$GUpdateUserInput;

  String? get username;
  String? get email;
  String? get password;
  String get id;
  static Serializer<GUpdateUserInput> get serializer =>
      _$gUpdateUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateUserInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateUserInput.serializer, json);
}

abstract class GUpdateMatchInput
    implements Built<GUpdateMatchInput, GUpdateMatchInputBuilder> {
  GUpdateMatchInput._();

  factory GUpdateMatchInput([Function(GUpdateMatchInputBuilder b) updates]) =
      _$GUpdateMatchInput;

  int? get exampleField;
  int get field;
  int get segment;
  String get matchId;
  String get legId;
  bool get isFinished;
  static Serializer<GUpdateMatchInput> get serializer =>
      _$gUpdateMatchInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateMatchInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateMatchInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateMatchInput.serializer, json);
}
