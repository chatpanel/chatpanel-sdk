//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/pref_section.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prefs_write.g.dart';

/// PrefsWrite
///
/// Properties:
/// * [sections] 
/// * [by] - Which client is writing.
@BuiltValue()
abstract class PrefsWrite implements Built<PrefsWrite, PrefsWriteBuilder> {
  @BuiltValueField(wireName: r'sections')
  BuiltMap<String, PrefSection> get sections;

  /// Which client is writing.
  @BuiltValueField(wireName: r'by')
  String? get by;

  PrefsWrite._();

  factory PrefsWrite([void updates(PrefsWriteBuilder b)]) = _$PrefsWrite;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrefsWriteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrefsWrite> get serializer => _$PrefsWriteSerializer();
}

class _$PrefsWriteSerializer implements PrimitiveSerializer<PrefsWrite> {
  @override
  final Iterable<Type> types = const [PrefsWrite, _$PrefsWrite];

  @override
  final String wireName = r'PrefsWrite';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrefsWrite object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sections';
    yield serializers.serialize(
      object.sections,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(PrefSection)]),
    );
    if (object.by != null) {
      yield r'by';
      yield serializers.serialize(
        object.by,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrefsWrite object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PrefsWriteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(PrefSection)]),
          ) as BuiltMap<String, PrefSection>;
          result.sections.replace(valueDes);
          break;
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.by = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrefsWrite deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrefsWriteBuilder();
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


