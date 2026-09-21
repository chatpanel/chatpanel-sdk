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
  /// Redacted on the way out, restored on the way back, routed by &#x60;model&#x60;. With &#x60;stream: true&#x60; the response is &#x60;text/event-stream&#x60; of OpenAI chunk objects ending in &#x60;data: [DONE]&#x60;. Send &#x60;tools&#x60; so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. &#x60;X-ChatPanel-Redaction: off&#x60; is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace.  **Permission prompts (gateway 0.25.0+).** List a function tool named &#x60;permission_prompt&#x60; to say your client can answer an agent&#39;s \&quot;may I run this?\&quot; — the gateway strips it from what the agent sees and lets the agent ask instead of denying headlessly. The question arrives as a &#x60;tool_calls&#x60; stop on that tool, its arguments &#x60;{ tool, input, description, path, rules }&#x60;; answer with a &#x60;tool&#x60; message whose content is the JSON &#x60;{ \&quot;behavior\&quot;: \&quot;allow\&quot; | \&quot;deny\&quot;, \&quot;scope\&quot;: \&quot;once\&quot; | \&quot;chat\&quot;, \&quot;message\&quot;?: string }&#x60;. Anything else is a deny.  **Two lanes.** An API destination (a cloud or local model endpoint) is a proxy hop and is open to any local caller. An AGENT destination (&#x60;codex&#x60;, &#x60;claude&#x60;, &#x60;opencode&#x60;, … — &#x60;provider_type: agent&#x60; in &#x60;GET /v1/models&#x60;) spawns a process on this machine, so the caller must hold the gateway token (0.9.0+): without it the gateway answers **401** &#x60;{ type: &#39;auth&#39;, code: &#39;agent_lane_token_required&#39; }&#x60;. The SDKs surface that as &#x60;ForbiddenError&#x60; with &#x60;status&#x60; 401. 
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
