//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'a2_a_result.g.dart';

/// The reply, plus the two facts every caller derives — done, and what a person must do.
///
/// Properties:
/// * [ok] 
/// * [kind] - A2A returns one or the other; an agent answering at once creates no task.
/// * [task] 
/// * [message] 
/// * [text] - The answer as text — artifacts first, then what the agent actually said.
/// * [done] 
/// * [needs] - `answer` for TASK_STATE_INPUT_REQUIRED, `approval` for TASK_STATE_AUTH_REQUIRED, null otherwise.
@BuiltValue()
abstract class A2AResult implements Built<A2AResult, A2AResultBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool? get ok;

  /// A2A returns one or the other; an agent answering at once creates no task.
  @BuiltValueField(wireName: r'kind')
  A2AResultKindEnum? get kind;
  // enum kindEnum {  task,  message,  };

  @BuiltValueField(wireName: r'task')
  BuiltMap<String, JsonObject?>? get task;

  @BuiltValueField(wireName: r'message')
  BuiltMap<String, JsonObject?>? get message;

  /// The answer as text — artifacts first, then what the agent actually said.
  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'done')
  bool? get done;

  /// `answer` for TASK_STATE_INPUT_REQUIRED, `approval` for TASK_STATE_AUTH_REQUIRED, null otherwise.
  @BuiltValueField(wireName: r'needs')
  A2AResultNeedsEnum? get needs;
  // enum needsEnum {  answer,  approval,  };

  A2AResult._();

  factory A2AResult([void updates(A2AResultBuilder b)]) = _$A2AResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(A2AResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<A2AResult> get serializer => _$A2AResultSerializer();
}

class _$A2AResultSerializer implements PrimitiveSerializer<A2AResult> {
  @override
  final Iterable<Type> types = const [A2AResult, _$A2AResult];

  @override
  final String wireName = r'A2AResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    A2AResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ok != null) {
      yield r'ok';
      yield serializers.serialize(
        object.ok,
        specifiedType: const FullType(bool),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(A2AResultKindEnum),
      );
    }
    if (object.task != null) {
      yield r'task';
      yield serializers.serialize(
        object.task,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.done != null) {
      yield r'done';
      yield serializers.serialize(
        object.done,
        specifiedType: const FullType(bool),
      );
    }
    if (object.needs != null) {
      yield r'needs';
      yield serializers.serialize(
        object.needs,
        specifiedType: const FullType(A2AResultNeedsEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    A2AResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required A2AResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.ok = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(A2AResultKindEnum),
          ) as A2AResultKindEnum?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'task':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.task.replace(valueDes);
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.message.replace(valueDes);
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'done':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.done = valueDes;
          break;
        case r'needs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(A2AResultNeedsEnum),
          ) as A2AResultNeedsEnum?;
          if (valueDes == null) continue;
          result.needs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  A2AResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = A2AResultBuilder();
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


/// A2A returns one or the other; an agent answering at once creates no task.
class A2AResultKindEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'task')
  static const A2AResultKindEnum task = _$a2AResultKindEnum_task;
  @BuiltValueEnumConst(wireName: r'message')
  static const A2AResultKindEnum message = _$a2AResultKindEnum_message;

  static Serializer<A2AResultKindEnum> get serializer => _$a2AResultKindEnumSerializer;

  const A2AResultKindEnum._(String name): super(name);

  static BuiltSet<A2AResultKindEnum> get values => _$a2AResultKindEnumValues;
  static A2AResultKindEnum valueOf(String name) => _$a2AResultKindEnumValueOf(name);
}

/// `answer` for TASK_STATE_INPUT_REQUIRED, `approval` for TASK_STATE_AUTH_REQUIRED, null otherwise.
class A2AResultNeedsEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'answer')
  static const A2AResultNeedsEnum answer = _$a2AResultNeedsEnum_answer;
  @BuiltValueEnumConst(wireName: r'approval')
  static const A2AResultNeedsEnum approval = _$a2AResultNeedsEnum_approval;

  static Serializer<A2AResultNeedsEnum> get serializer => _$a2AResultNeedsEnumSerializer;

  const A2AResultNeedsEnum._(String name): super(name);

  static BuiltSet<A2AResultNeedsEnum> get values => _$a2AResultNeedsEnumValues;
  static A2AResultNeedsEnum valueOf(String name) => _$a2AResultNeedsEnumValueOf(name);
}

