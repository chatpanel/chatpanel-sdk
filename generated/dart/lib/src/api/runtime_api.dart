//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:chatpanel/src/api_util.dart';
import 'package:chatpanel/src/model/error_response.dart';
import 'package:chatpanel/src/model/runtime_action_result.dart';
import 'package:chatpanel/src/model/runtime_document.dart';
import 'package:chatpanel/src/model/runtime_engine_request.dart';
import 'package:chatpanel/src/model/runtime_service_request.dart';

class RuntimeApi {

  final Dio _dio;

  final Serializers _serializers;

  const RuntimeApi(this._dio, this._serializers);

  /// Start the container engine (Podman — creates and starts its machine where one is needed).
  /// &#x60;{ action: &#39;start&#39; }&#x60;. Podman on macOS and Windows runs containers in a machine: made on first start (&#x60;podman machine init&#x60;), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. 
  ///
  /// Parameters:
  /// * [name] 
  /// * [runtimeEngineRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [RuntimeActionResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<RuntimeActionResult>> runtimeEngine({ 
    required String name,
    RuntimeEngineRequest? runtimeEngineRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/runtime/engines/{name}'.replaceAll('{' r'name' '}', encodeQueryParameter(_serializers, name, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'tokenHeader',
            'keyName': 'X-ChatPanel-Token',
            'where': 'header',
          },{
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
      const _type = FullType(RuntimeEngineRequest);
      _bodyData = runtimeEngineRequest == null ? null : _serializers.serialize(runtimeEngineRequest, specifiedType: _type);

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

    RuntimeActionResult? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(RuntimeActionResult),
      ) as RuntimeActionResult;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<RuntimeActionResult>(
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

  /// Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it.
  /// &#x60;{ action: &#39;start&#39; | &#39;stop&#39; }&#x60;. &#x60;start&#x60; brings the engine up if it is not, runs the service&#39;s container from its kit (SearXNG: &#x60;127.0.0.1:8888&#x60;, JSON on, the limiter off, a random secret, capabilities dropped; &#x60;reranker&#x60; on 8889 and &#x60;opendecision&#x60; on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (&#x60;search.searxng.url&#x60;; &#x60;capabilities.rerank&#x60; / &#x60;capabilities.decide&#x60;, so &#x60;/v1/rerank&#x60; and &#x60;/v1/decide&#x60; are served and listed). &#x60;stop&#x60; stops the container and clears what it set. &#x60;{ action: &#39;model&#39;, model }&#x60; (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (&#x60;GET /v1/runtime&#x60; &#x60;services.&lt;id&gt;.models&#x60;) or a Hugging Face &#x60;owner/name&#x60; — gated by the container ENGINE&#39;s memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. 
  ///
  /// Parameters:
  /// * [id] 
  /// * [runtimeServiceRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [RuntimeActionResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<RuntimeActionResult>> runtimeService({ 
    required String id,
    RuntimeServiceRequest? runtimeServiceRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/runtime/services/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'tokenHeader',
            'keyName': 'X-ChatPanel-Token',
            'where': 'header',
          },{
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
      const _type = FullType(RuntimeServiceRequest);
      _bodyData = runtimeServiceRequest == null ? null : _serializers.serialize(runtimeServiceRequest, specifiedType: _type);

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

    RuntimeActionResult? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(RuntimeActionResult),
      ) as RuntimeActionResult;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<RuntimeActionResult>(
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

  /// The runtime — the process sandbox, what is running now, the container engine, the services.
  /// One document for Settings › Runtime. &#x60;sandbox&#x60; is the bridge&#39;s own (&#x60;/health.sandbox&#x60;: enabled, mode &#x60;open&#x60; | &#x60;allowlist&#x60; | &#x60;none&#x60;, the runtime found, the reason when none, the global &#x60;extras&#x60;, whether a process can get a session of its own, and &#x60;refused&#x60; — the last hosts any process was refused, names only). &#x60;processes&#x60; lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. &#x60;engines&#x60; says which container engine exists (&#x60;podman&#x60; first, &#x60;docker&#x60;) and whether it can run a container now; when none does, &#x60;install&#x60; carries the command for this platform — shown to the person, never run by the gateway. &#x60;services&#x60; is the catalogue: &#x60;searxng&#x60; with its state (&#x60;no-engine&#x60; | &#x60;engine-stopped&#x60; | &#x60;absent&#x60; | &#x60;stopped&#x60; | &#x60;running&#x60;), its loopback URL and whether it answers. 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [RuntimeDocument] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<RuntimeDocument>> runtimeStatus({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/runtime';
    final _options = Options(
      method: r'GET',
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    RuntimeDocument? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(RuntimeDocument),
      ) as RuntimeDocument;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<RuntimeDocument>(
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
