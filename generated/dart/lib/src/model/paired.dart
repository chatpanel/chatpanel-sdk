//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paired.g.dart';

/// Paired
///
/// Properties:
/// * [ok] 
/// * [token] - The gateway token. A secret — store it 0600 or in the platform keychain; never log it.
/// * [bridgeToken] - The bridge's token when this machine has one.
@BuiltValue()
abstract class Paired implements Built<Paired, PairedBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  /// The gateway token. A secret — store it 0600 or in the platform keychain; never log it.
  @BuiltValueField(wireName: r'token')
  String get token;

  /// The bridge's token when this machine has one.
  @BuiltValueField(wireName: r'bridgeToken')
  String? get bridgeToken;

  Paired._();

  factory Paired([void updates(PairedBuilder b)]) = _$Paired;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PairedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Paired> get serializer => _$PairedSerializer();
}

class _$PairedSerializer implements PrimitiveSerializer<Paired> {
  @override
  final Iterable<Type> types = const [Paired, _$Paired];

  @override
  final String wireName = r'Paired';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Paired object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    if (object.bridgeToken != null) {
      yield r'bridgeToken';
      yield serializers.serialize(
        object.bridgeToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Paired object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PairedBuilder result,
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
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'bridgeToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bridgeToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Paired deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PairedBuilder();
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


