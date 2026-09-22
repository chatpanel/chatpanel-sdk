//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:chatpanel/src/api_util.dart';
import 'package:chatpanel/src/model/audio_speech_request.dart';
import 'package:chatpanel/src/model/error_response.dart';
import 'package:chatpanel/src/model/transcription.dart';

class AudioApi {

  final Dio _dio;

  final Serializers _serializers;

  const AudioApi(this._dio, this._serializers);

  /// Text to speech (OpenAI-compatible) — a WAV back.
  /// &#x60;{ input, voice?, speed?, response_format? }&#x60; → &#x60;audio/wav&#x60;, from the gateway&#39;s own voice (Kokoro / VITS in-process) or the provider its table names (an ElevenLabs or OpenAI voice — then the text leaves the machine, and the audit says so). Not redacted: synthesis is for the person who wrote the text. &#x60;/tts&#x60; is the same handler with &#x60;text&#x60;. 
  ///
  /// Parameters:
  /// * [audioSpeechRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> audioSpeech({ 
    required AudioSpeechRequest audioSpeechRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/audio/speech';
    final _options = Options(
      method: r'POST',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'gatewayToken',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(AudioSpeechRequest);
      _bodyData = _serializers.serialize(audioSpeechRequest, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Transcribe an audio file (OpenAI-compatible).
  /// OpenAI&#39;s shape over the gateway&#39;s own transcriber — the in-process whisper, or the provider its capability table names (a hosted API, a container the Runtime started). A WAV is decoded by the gateway itself; mp3/m4a/webm/ogg/flac go through &#x60;ffmpeg&#x60; when it is on the gateway&#39;s PATH, else 415 says so. Beyond OpenAI: &#x60;diarize&#x3D;true&#x60; puts a &#x60;speaker&#x60; on every segment of &#x60;verbose_json&#x60;. The live microphone keeps the session API (&#x60;/stt/sessions&#x60;); this is for a file. 
  ///
  /// Parameters:
  /// * [file] - WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads.
  /// * [model] - Ignored — the gateway transcribes with what its table says; kept for OpenAI clients.
  /// * [language] - ISO code; auto-detected when absent.
  /// * [responseFormat] 
  /// * [diarize] - A speaker per segment (verbose_json).
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Transcription] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Transcription>> audioTranscribe({ 
    required MultipartFile file,
    String? model,
    String? language,
    String? responseFormat,
    String? diarize,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/audio/transcriptions';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'gatewayToken',
          },
        ],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'file': file,
        if (model != null) r'model': encodeFormParameter(_serializers, model, const FullType(String)),
        if (language != null) r'language': encodeFormParameter(_serializers, language, const FullType(String)),
        if (responseFormat != null) r'response_format': encodeFormParameter(_serializers, responseFormat, const FullType(String)),
        if (diarize != null) r'diarize': encodeFormParameter(_serializers, diarize, const FullType(String)),
      });

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Transcription? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(Transcription),
      ) as Transcription;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Transcription>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
