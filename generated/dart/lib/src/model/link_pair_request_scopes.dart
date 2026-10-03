//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'link_pair_request_scopes.g.dart';

/// What the partner may reach: `models` (GET /v1/models), `chat` (POST /v1/chat/completions and /v1/messages to API models), `agents` (also the coding agents, as plain conversation; needs chat). An array or a comma list; absent is models and chat.
@BuiltValue()
abstract class LinkPairRequestScopes implements Built<LinkPairRequestScopes, LinkPairRequestScopesBuilder> {
  /// One Of [BuiltList<String>], [String]
  OneOf get oneOf;

  LinkPairRequestScopes._();

  factory LinkPairRequestScopes([void updates(LinkPairRequestScopesBuilder b)]) = _$LinkPairRequestScopes;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkPairRequestScopesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkPairRequestScopes> get serializer => _$LinkPairRequestScopesSerializer();
}

class _$LinkPairRequestScopesSerializer implements PrimitiveSerializer<LinkPairRequestScopes> {
  @override
  final Iterable<Type> types = const [LinkPairRequestScopes, _$LinkPairRequestScopes];

  @override
  final String wireName = r'LinkPairRequestScopes';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkPairRequestScopes object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkPairRequestScopes object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  LinkPairRequestScopes deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkPairRequestScopesBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(BuiltList, [FullType(OneOf0Enum)]), FullType(String), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


