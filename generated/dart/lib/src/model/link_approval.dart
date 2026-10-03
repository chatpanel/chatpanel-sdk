//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_approval.g.dart';

/// LinkApproval
///
/// Properties:
/// * [id] 
/// * [partner] - The partner whose agent asks.
/// * [device] 
/// * [conversation] - The partner's conversation (`partner.<device>.<thread>`), or the turn's own.
/// * [title] - Who asks and what kind of action — \"Atlas’s agent asks — run a command?\"
/// * [body] - The command
/// * [tool] 
/// * [createdAt] 
/// * [expiresAt] - When it becomes a no.
@BuiltValue()
abstract class LinkApproval implements Built<LinkApproval, LinkApprovalBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The partner whose agent asks.
  @BuiltValueField(wireName: r'partner')
  String get partner;

  @BuiltValueField(wireName: r'device')
  String? get device;

  /// The partner's conversation (`partner.<device>.<thread>`), or the turn's own.
  @BuiltValueField(wireName: r'conversation')
  String? get conversation;

  /// Who asks and what kind of action — \"Atlas’s agent asks — run a command?\"
  @BuiltValueField(wireName: r'title')
  String get title;

  /// The command
  @BuiltValueField(wireName: r'body')
  String get body;

  @BuiltValueField(wireName: r'tool')
  String? get tool;

  @BuiltValueField(wireName: r'createdAt')
  int get createdAt;

  /// When it becomes a no.
  @BuiltValueField(wireName: r'expiresAt')
  int get expiresAt;

  LinkApproval._();

  factory LinkApproval([void updates(LinkApprovalBuilder b)]) = _$LinkApproval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkApprovalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkApproval> get serializer => _$LinkApprovalSerializer();
}

class _$LinkApprovalSerializer implements PrimitiveSerializer<LinkApproval> {
  @override
  final Iterable<Type> types = const [LinkApproval, _$LinkApproval];

  @override
  final String wireName = r'LinkApproval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkApproval object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'partner';
    yield serializers.serialize(
      object.partner,
      specifiedType: const FullType(String),
    );
    if (object.device != null) {
      yield r'device';
      yield serializers.serialize(
        object.device,
        specifiedType: const FullType(String),
      );
    }
    if (object.conversation != null) {
      yield r'conversation';
      yield serializers.serialize(
        object.conversation,
        specifiedType: const FullType(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(String),
    );
    if (object.tool != null) {
      yield r'tool';
      yield serializers.serialize(
        object.tool,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(int),
    );
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkApproval object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkApprovalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'partner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.partner = valueDes;
          break;
        case r'device':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.device = valueDes;
          break;
        case r'conversation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.conversation = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.body = valueDes;
          break;
        case r'tool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tool = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdAt = valueDes;
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkApproval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkApprovalBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


