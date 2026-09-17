//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/pref_section.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prefs.g.dart';

/// Prefs
///
/// Properties:
/// * [ok] 
/// * [revision] 
/// * [sections] 
/// * [stamps] 
@BuiltValue()
abstract class Prefs implements Built<Prefs, PrefsBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'revision')
  int get revision;

  @BuiltValueField(wireName: r'sections')
  BuiltMap<String, PrefSection>? get sections;

  @BuiltValueField(wireName: r'stamps')
  BuiltMap<String, int>? get stamps;

  Prefs._();

  factory Prefs([void updates(PrefsBuilder b)]) = _$Prefs;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrefsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Prefs> get serializer => _$PrefsSerializer();
}

class _$PrefsSerializer implements PrimitiveSerializer<Prefs> {
  @override
  final Iterable<Type> types = const [Prefs, _$Prefs];

  @override
  final String wireName = r'Prefs';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Prefs object, {
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
    if (object.sections != null) {
      yield r'sections';
      yield serializers.serialize(
        object.sections,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(PrefSection)]),
      );
    }
    if (object.stamps != null) {
      yield r'stamps';
      yield serializers.serialize(
        object.stamps,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Prefs object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PrefsBuilder result,
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
        case r'sections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(PrefSection)]),
          ) as BuiltMap<String, PrefSection>?;
          if (valueDes == null) continue;
          result.sections.replace(valueDes);
          break;
        case r'stamps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.stamps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Prefs deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrefsBuilder();
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


