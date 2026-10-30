//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'kb_access_agents.g.dart';

/// `all`, or the agent names (lower-case) that may use the base — the owner always may.
@BuiltValue()
abstract class KbAccessAgents implements Built<KbAccessAgents, KbAccessAgentsBuilder> {
  /// One Of [BuiltList<String>], [String]
  OneOf get oneOf;

  KbAccessAgents._();

  factory KbAccessAgents([void updates(KbAccessAgentsBuilder b)]) = _$KbAccessAgents;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbAccessAgentsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbAccessAgents> get serializer => _$KbAccessAgentsSerializer();
}

class _$KbAccessAgentsSerializer implements PrimitiveSerializer<KbAccessAgents> {
  @override
  final Iterable<Type> types = const [KbAccessAgents, _$KbAccessAgents];

  @override
  final String wireName = r'KbAccessAgents';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbAccessAgents object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    KbAccessAgents object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  KbAccessAgents deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbAccessAgentsBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(OneOf0Enum), FullType(BuiltList, [FullType(String)]), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


