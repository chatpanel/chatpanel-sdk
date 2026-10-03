//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:chatpanel/src/api_util.dart';
import 'package:chatpanel/src/model/browser_announce200_response.dart';
import 'package:chatpanel/src/model/error_response.dart';
import 'package:chatpanel/src/model/link_pair_request.dart';
import 'package:chatpanel/src/model/link_pair_result.dart';
import 'package:chatpanel/src/model/link_route_request.dart';
import 'package:chatpanel/src/model/link_status.dart';

class LinkApi {

  final Dio _dio;

  final Serializers _serializers;

  const LinkApi(this._dio, this._serializers);

  /// Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first.
  /// **A phone** (no &#x60;kind&#x60;, or &#x60;kind: phone&#x60;): a room on the route&#39;s relay and the QR the phone scans; the answer carries &#x60;uri&#x60;, &#x60;svg&#x60;, &#x60;expiresAt&#x60;, &#x60;room&#x60;.  **A partner server** (&#x60;kind: partner&#x60;, gateway 0.89.0+): nothing is issued without the owner&#39;s yes. Without &#x60;confirm: true&#x60; the answer is &#x60;{ confirmed: false, preview }&#x60; — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With &#x60;confirm: true&#x60; the answer adds the &#x60;code&#x60; (&#x60;cplink1.…&#x60;, one use, 10 minutes), &#x60;room&#x60;, &#x60;route&#x60; and &#x60;host&#x60;. The route is the gateway&#39;s own unless &#x60;route&#x60; names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel&#39;s hosted relay is used only for &#x60;link&#x60;. Refused with 403 from a device on Link: a paired device never pairs another. 
  ///
  /// Parameters:
  /// * [linkPairRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [LinkPairResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<LinkPairResult>> linkPair({ 
    LinkPairRequest? linkPairRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/link/pair';
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
      const _type = FullType(LinkPairRequest);
      _bodyData = linkPairRequest == null ? null : _serializers.serialize(linkPairRequest, specifiedType: _type);

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

    LinkPairResult? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(LinkPairResult),
      ) as LinkPairResult;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<LinkPairResult>(
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

  /// Remove a paired device now — its relay room, its key and its open connection.
  /// 
  ///
  /// Parameters:
  /// * [deviceId] - The device's `id` from `link.status`.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BrowserAnnounce200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BrowserAnnounce200Response>> linkRemoveDevice({ 
    required String deviceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/link/devices/{deviceId}'.replaceAll('{' r'deviceId' '}', encodeQueryParameter(_serializers, deviceId, const FullType(String)).toString());
    final _options = Options(
      method: r'DELETE',
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BrowserAnnounce200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BrowserAnnounce200Response),
      ) as BrowserAnnounce200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BrowserAnnounce200Response>(
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

  /// How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel.
  /// Checked, saved in the gateway&#39;s config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which.
  ///
  /// Parameters:
  /// * [linkRouteRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [LinkStatus] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<LinkStatus>> linkRoute({ 
    required LinkRouteRequest linkRouteRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/link/route';
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
      const _type = FullType(LinkRouteRequest);
      _bodyData = _serializers.serialize(linkRouteRequest, specifiedType: _type);

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

    LinkStatus? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(LinkStatus),
      ) as LinkStatus;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<LinkStatus>(
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

  /// The Link route and every paired device — phones and partner servers — with what each may reach.
  /// No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries &#x60;kind: partner&#x60;, its &#x60;partner.name&#x60;, &#x60;scopes&#x60;, the &#x60;route&#x60; it was paired on and the &#x60;host&#x60; it connects to; a phone carries &#x60;kind: phone&#x60; and follows the gateway&#39;s route. Changing the route never moves a partner: one whose tunnel door shut with the route says &#x60;routeClosed&#x60;. 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [LinkStatus] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<LinkStatus>> linkStatus({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/link';
    final _options = Options(
      method: r'GET',
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    LinkStatus? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(LinkStatus),
      ) as LinkStatus;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<LinkStatus>(
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
