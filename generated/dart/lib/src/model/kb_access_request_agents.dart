//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'kb_access_request_agents.g.dart';

/// `all`, or the agent names to grant.
@BuiltValue()
abstract class KbAccessRequestAgents implements Built<KbAccessRequestAgents, KbAccessRequestAgentsBuilder> {
  /// One Of [BuiltList<String>], [String]
  OneOf get oneOf;

  KbAccessRequestAgents._();

  factory KbAccessRequestAgents([void updates(KbAccessRequestAgentsBuilder b)]) = _$KbAccessRequestAgents;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbAccessRequestAgentsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbAccessRequestAgents> get serializer => _$KbAccessRequestAgentsSerializer();
}

class _$KbAccessRequestAgentsSerializer implements PrimitiveSerializer<KbAccessRequestAgents> {
  @override
  final Iterable<Type> types = const [KbAccessRequestAgents, _$KbAccessRequestAgents];

  @override
  final String wireName = r'KbAccessRequestAgents';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbAccessRequestAgents object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    KbAccessRequestAgents object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  KbAccessRequestAgents deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbAccessRequestAgentsBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(OneOf0Enum), FullType(BuiltList, [FullType(String)]), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


