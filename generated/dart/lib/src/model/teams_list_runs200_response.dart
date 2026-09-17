//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/team_run.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'teams_list_runs200_response.g.dart';

/// TeamsListRuns200Response
///
/// Properties:
/// * [ok] 
/// * [runs] 
@BuiltValue()
abstract class TeamsListRuns200Response implements Built<TeamsListRuns200Response, TeamsListRuns200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'runs')
  BuiltList<TeamRun> get runs;

  TeamsListRuns200Response._();

  factory TeamsListRuns200Response([void updates(TeamsListRuns200ResponseBuilder b)]) = _$TeamsListRuns200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamsListRuns200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamsListRuns200Response> get serializer => _$TeamsListRuns200ResponseSerializer();
}

class _$TeamsListRuns200ResponseSerializer implements PrimitiveSerializer<TeamsListRuns200Response> {
  @override
  final Iterable<Type> types = const [TeamsListRuns200Response, _$TeamsListRuns200Response];

  @override
  final String wireName = r'TeamsListRuns200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamsListRuns200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'runs';
    yield serializers.serialize(
      object.runs,
      specifiedType: const FullType(BuiltList, [FullType(TeamRun)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamsListRuns200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TeamsListRuns200ResponseBuilder result,
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
        case r'runs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TeamRun)]),
          ) as BuiltList<TeamRun>;
          result.runs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamsListRuns200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamsListRuns200ResponseBuilder();
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


