//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:chatpanel/src/model/capabilities_document.dart';
import 'package:chatpanel/src/model/decide_request.dart';
import 'package:chatpanel/src/model/decide_response.dart';
import 'package:chatpanel/src/model/detect_request.dart';
import 'package:chatpanel/src/model/detect_response.dart';
import 'package:chatpanel/src/model/error_response.dart';
import 'package:chatpanel/src/model/rerank_request.dart';
import 'package:chatpanel/src/model/rerank_response.dart';

class CapabilitiesApi {

  final Dio _dio;

  final Serializers _serializers;

  const CapabilitiesApi(this._dio, this._serializers);

  /// Typed decisions over a text — a choice, a score or a yes/no, each with a probability.
  /// ChatPanel&#39;s &#x60;decide&#x60; signature (docs/capability-endpoints.md §4.2): &#x60;state&#x60; is the text judged, &#x60;questions&#x60; are keyed by identifier — a &#x60;choice&#x60; picks one of its &#x60;options&#x60;, a &#x60;score&#x60; places the state on &#x60;options&#x60; read as an ordered rubric, a &#x60;noul&#x60; is yes/no. Served BY PROXY through the adapter the config names: the &#x60;opendecision&#x60; container started under Settings › Runtime (TypeSafe&#39;s &#x60;/v1/systemone&#x60; shape, loopback-only), or a server &#x60;capabilities.decide&#x60; names (a Jev endpoint with a token, another gateway). &#x60;calibrated&#x60; in the response says whether &#x60;p&#x60; may be read as a probability — an NLI concentration (OpenDecision) is not one. Errors as &#x60;/v1/rerank&#x60;. 
  ///
  /// Parameters:
  /// * [decideRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DecideResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<DecideResponse>> capabilitiesDecide({ 
    required DecideRequest decideRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/decide';
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(DecideRequest);
      _bodyData = _serializers.serialize(decideRequest, specifiedType: _type);

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

    DecideResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(DecideResponse),
      ) as DecideResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DecideResponse>(
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

  /// Find entities in text — the model&#39;s own labels, with offsets and scores.
  /// The standard &#x60;detect&#x60; signature over the in-process entity detector. Labels are the model&#39;s own (&#x60;private_person&#x60;, &#x60;PER&#x60;, &#x60;GIVENNAME&#x60;…) — the client maps them; the vocabulary is listed by &#x60;GET /v1/capabilities&#x60;. &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the provider&#39;s own latency record before the model runs, never missed. An engine that is still loading answers 503 &#x60;detector_unready&#x60;; an empty &#x60;entities&#x60; on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. 
  ///
  /// Parameters:
  /// * [detectRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DetectResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<DetectResponse>> capabilitiesDetect({ 
    required DetectRequest detectRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/detect';
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(DetectRequest);
      _bodyData = _serializers.serialize(detectRequest, specifiedType: _type);

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

    DetectResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(DetectResponse),
      ) as DetectResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DetectResponse>(
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

  /// What this provider can do — which capabilities, models, measured cost and runtime state.
  /// The discovery document a client chooses a provider from: one entry per capability (&#x60;detect&#x60;, &#x60;stt&#x60;, &#x60;tts&#x60; today; &#x60;decide&#x60;, &#x60;rerank&#x60;, &#x60;embed&#x60; as they land), each at its standard route, with the models it can serve, the loaded model&#39;s own label vocabulary (&#x60;detect&#x60;), the measured latency record, and the runtime&#39;s state. Never loads a model. 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CapabilitiesDocument] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CapabilitiesDocument>> capabilitiesList({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/capabilities';
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

    CapabilitiesDocument? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CapabilitiesDocument),
      ) as CapabilitiesDocument;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CapabilitiesDocument>(
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

  /// Order documents by relevance to a query — a cross-encoder, no language model.
  /// The Cohere / Jina rerank shape, served BY PROXY: the gateway forwards to the reranker it is pointed at — the &#x60;reranker&#x60; container started under Settings › Runtime (Text Embeddings Inference with &#x60;BAAI/bge-reranker-v2-m3&#x60;, loopback-only), or the server &#x60;capabilities.rerank&#x60; names — through the adapter that speaks its wire, and validates the answer against the contract before it leaves (a wrong shape is 502 &#x60;bad_shape&#x60;, never a bad order). &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the gateway&#39;s own latency record before dialling. 404 &#x60;no_provider&#x60; until a provider is configured; 503 &#x60;provider_unavailable&#x60; when it does not answer. &#x60;GET /v1/capabilities&#x60; lists it only while configured. 
  ///
  /// Parameters:
  /// * [rerankRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [RerankResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<RerankResponse>> capabilitiesRerank({ 
    required RerankRequest rerankRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/rerank';
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(RerankRequest);
      _bodyData = _serializers.serialize(rerankRequest, specifiedType: _type);

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

    RerankResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(RerankResponse),
      ) as RerankResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<RerankResponse>(
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
