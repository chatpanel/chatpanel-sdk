//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prefs_write_result.g.dart';

/// PrefsWriteResult
///
/// Properties:
/// * [ok] 
/// * [revision] 
/// * [applied] 
/// * [kept] 
@BuiltValue()
abstract class PrefsWriteResult implements Built<PrefsWriteResult, PrefsWriteResultBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'revision')
  int get revision;

  @BuiltValueField(wireName: r'applied')
  BuiltList<String>? get applied;

  @BuiltValueField(wireName: r'kept')
  BuiltList<String>? get kept;

  PrefsWriteResult._();

  factory PrefsWriteResult([void updates(PrefsWriteResultBuilder b)]) = _$PrefsWriteResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrefsWriteResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrefsWriteResult> get serializer => _$PrefsWriteResultSerializer();
}

class _$PrefsWriteResultSerializer implements PrimitiveSerializer<PrefsWriteResult> {
  @override
  final Iterable<Type> types = const [PrefsWriteResult, _$PrefsWriteResult];

  @override
  final String wireName = r'PrefsWriteResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrefsWriteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'revision';
    yield serializers.serialize(
      object.revision,
      specifiedType: const FullType(int),
    );
    if (object.applied != null) {
      yield r'applied';
      yield serializers.serialize(
        object.applied,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.kept != null) {
      yield r'kept';
      yield serializers.serialize(
        object.kept,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrefsWriteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PrefsWriteResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'revision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.revision = valueDes;
          break;
        case r'applied':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.applied.replace(valueDes);
          break;
        case r'kept':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kept.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrefsWriteResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrefsWriteResultBuilder();
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


