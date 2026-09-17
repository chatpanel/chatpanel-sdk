//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:chatpanel/src/model/chat_completion.dart';
import 'package:chatpanel/src/model/chat_completion_request.dart';
import 'package:chatpanel/src/model/error_response.dart';

class ChatApi {

  final Dio _dio;

  final Serializers _serializers;

  const ChatApi(this._dio, this._serializers);

  /// One chat turn through the gateway (OpenAI-compatible).
  /// Redacted on the way out, restored on the way back, routed by &#x60;model&#x60;. With &#x60;stream: true&#x60; the response is &#x60;text/event-stream&#x60; of OpenAI chunk objects ending in &#x60;data: [DONE]&#x60;. Send &#x60;tools&#x60; so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. &#x60;X-ChatPanel-Redaction: off&#x60; is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. 
  ///
  /// Parameters:
  /// * [chatCompletionRequest] 
  /// * [xChatPanelRedaction] - Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace.
  /// * [xChatPanelRun] - A team role's run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ChatCompletion] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ChatCompletion>> chatCompletions({ 
    required ChatCompletionRequest chatCompletionRequest,
    String? xChatPanelRedaction,
    String? xChatPanelRun,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/chat/completions';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        if (xChatPanelRedaction != null) r'X-ChatPanel-Redaction': xChatPanelRedaction,
        if (xChatPanelRun != null) r'X-ChatPanel-Run': xChatPanelRun,
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
      const _type = FullType(ChatCompletionRequest);
      _bodyData = _serializers.serialize(chatCompletionRequest, specifiedType: _type);

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

    ChatCompletion? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ChatCompletion),
      ) as ChatCompletion;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ChatCompletion>(
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
