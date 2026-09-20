//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:chatpanel/src/api_util.dart';
import 'package:chatpanel/src/model/error_response.dart';
import 'package:chatpanel/src/model/extract_request.dart';
import 'package:chatpanel/src/model/extract_response.dart';
import 'package:chatpanel/src/model/read_request.dart';
import 'package:chatpanel/src/model/read_response.dart';
import 'package:chatpanel/src/model/retrieval_read_alias200_response.dart';
import 'package:chatpanel/src/model/retrieval_search_alias200_response.dart';
import 'package:chatpanel/src/model/web_search_request.dart';
import 'package:chatpanel/src/model/web_search_response.dart';

class RetrievalApi {

  final Dio _dio;

  final Serializers _serializers;

  const RetrievalApi(this._dio, this._serializers);

  /// A document&#39;s pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash.
  /// The &#x60;extract&#x60; capability (docs/capability-endpoints.md): the third leg beside &#x60;search&#x60; and &#x60;read&#x60;. Two calls on one route. With &#x60;name&#x60; and &#x60;data&#x60; (the file, base64), the document is parsed in a worker process on this machine — no network, the vault unreadable — and the answer is its identity (&#x60;hash&#x60;, SHA-256 of the bytes), its &#x60;type&#x60; as read from the bytes, its &#x60;title&#x60; when it has one and how many &#x60;pages&#x60; it has; the text stays on the server. With &#x60;hash&#x60; and &#x60;page&#x60;, one page&#39;s text comes back; the bytes crossed once. A page is the format&#39;s own unit (a PDF page, a slide, a sheet) or, for a document with none (DOCX, Markdown, text), a run of ~6,000 characters cut at a heading. Readers: PDF (pdf.js, the text layer — a scanned document is &#x60;scanned: true&#x60; with empty pages, never OCR&#39;d), DOCX (Markdown), XLSX/ODS (rows of cells), PPTX/ODP (a slide per page, speaker notes appended), ODT, Markdown, text, CSV, HTML. A hash the worker no longer holds (it is dropped when idle) is a 404 &#x60;unknown_document&#x60;: send the bytes again. &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the worker&#39;s own record. 
  ///
  /// Parameters:
  /// * [extractRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ExtractResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ExtractResponse>> retrievalExtract({ 
    required ExtractRequest extractRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/extract';
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
      const _type = FullType(ExtractRequest);
      _bodyData = _serializers.serialize(extractRequest, specifiedType: _type);

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

    ExtractResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ExtractResponse),
      ) as ExtractResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ExtractResponse>(
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

  /// Read one public page as LLM-ready Markdown, cited where it landed, with its sections.
  /// The &#x60;read&#x60; capability (docs/web-retrieval.md §4.2). The page is fetched from this machine as the user&#39;s agent — public web only (the shared SSRF guard, re-checked where a redirect lands), a browser User-Agent, no cookies — and turned into Markdown that keeps headings, lists, tables, code and links. &#x60;url&#x60; in the answer is where the page should be CITED: the same-origin canonical when it declares one, else where the fetch landed; &#x60;sections&#x60; are the page&#39;s own heading ids with their offset into the content so a citation can point at &#x60;url#section&#x60;. A page that could not be read as the article — a login wall, a paywall, a 429 — is a 200 with &#x60;restricted.reason&#x60; and the caller&#39;s &#x60;snippet&#x60; standing in for the content, never the wall rendered as prose. &#x60;maxChars&#x60; cuts at a section boundary. A read is served from this process&#39;s page cache when fresh (&#x60;cached: true&#x60;), revalidated with its ETag when stale. &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the provider&#39;s own record, never missed. Providers are listed by &#x60;GET /v1/capabilities&#x60;: &#x60;defuddle&#x60; (in-process), &#x60;text&#x60; (the DOM-less fallback), &#x60;remote&#x60; (an &#x60;r.jina.ai&#x60;-shaped reader configured under &#x60;read.remote&#x60;). 
  ///
  /// Parameters:
  /// * [readRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReadResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReadResponse>> retrievalRead({ 
    required ReadRequest readRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/read';
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
      const _type = FullType(ReadRequest);
      _bodyData = _serializers.serialize(readRequest, specifiedType: _type);

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

    ReadResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReadResponse),
      ) as ReadResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReadResponse>(
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

  /// The r.jina.ai-shaped alias — &#x60;GET /v1/read/https://…&#x60; — for clients that already speak it.
  /// Same read as &#x60;POST /v1/read&#x60;, addressed the way the shipped ChatPanel extension&#39;s *reader service* slot (and anything else built for &#x60;r.jina.ai&#x60;) already addresses a reader: the page URL appended to the base, as is or percent-encoded, with its own query string kept. Answers &#x60;text/plain&#x60; with &#x60;Title:&#x60; / &#x60;URL Source:&#x60; / &#x60;Published Time:&#x60; header lines, a blank line and &#x60;Markdown Content:&#x60;; under &#x60;Accept: application/json&#x60; the §4.2 document wrapped as &#x60;{ code, status, data }&#x60;. &#x60;X-Return-Format: text&#x60; selects the text form. A Bearer token is accepted and ignored. 
  ///
  /// Parameters:
  /// * [url] - The page URL, as is or percent-encoded.
  /// * [accept] - `application/json` for the document; text otherwise.
  /// * [xReturnFormat] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> retrievalReadAlias({ 
    required String url,
    String? accept,
    String? xReturnFormat,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/read/{url}'.replaceAll('{' r'url' '}', encodeQueryParameter(_serializers, url, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (accept != null) r'Accept': accept,
        if (xReturnFormat != null) r'X-Return-Format': xReturnFormat,
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

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
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

  /// Search the web through the provider this gateway is configured with; optionally read the top results in the same request.
  /// The &#x60;search&#x60; capability (docs/web-retrieval.md §4.1). Providers are listed by &#x60;GET /v1/capabilities&#x60;: &#x60;serp&#x60; (a results page fetched and read with the shared rules — no install, the default) and &#x60;searxng&#x60; (the user&#39;s own metasearch, preferred the moment it answers). &#x60;read: N&#x60; reads the top N results in parallel in this request, each carrying a §4.2 document under &#x60;read&#x60; — one round-trip instead of 1 + N; a page that will not be read keeps its snippet with &#x60;read.restricted.reason&#x60;. The query goes through layer-1 redaction (emails, cards, keys, dictionary terms — never the name detector) before it leaves; what was replaced is dropped and &#x60;redacted: true&#x60; says so; a query with nothing left is 400 &#x60;unsafe_query&#x60;. &#x60;freshness&#x60; and &#x60;lang&#x60; are honoured by SearXNG; &#x60;site&#x60; by both. &#x60;budgetMs&#x60; covers the search and its reads and is refused (503 &#x60;over_budget&#x60;) from the provider&#39;s record. &#x60;engines&#x60; names what was actually asked, so an empty list can be told from a blocked one. 
  ///
  /// Parameters:
  /// * [webSearchRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WebSearchResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WebSearchResponse>> retrievalSearch({ 
    required WebSearchRequest webSearchRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/search';
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
      const _type = FullType(WebSearchRequest);
      _bodyData = _serializers.serialize(webSearchRequest, specifiedType: _type);

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

    WebSearchResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(WebSearchResponse),
      ) as WebSearchResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WebSearchResponse>(
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

  /// The s.jina.ai-shaped alias — &#x60;GET /v1/search/&lt;query&gt;&#x60; — the top results WITH their content.
  /// Same search as &#x60;POST /v1/search&#x60; with &#x60;read: 5&#x60; (&#x60;?read&#x3D;N&#x60;, 0–10, changes it), answered in the shape the shipped ChatPanel extension&#39;s *Web search API* engine already reads: &#x60;{ code, status, data: [{ url, title, description, content, publishedTime? }] }&#x60; where &#x60;content&#x60; is the page&#39;s Markdown when it was read and the snippet otherwise — nothing needs fetching on the client. A Bearer token is accepted and ignored. 
  ///
  /// Parameters:
  /// * [q] - The query, percent-encoded.
  /// * [read] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [RetrievalSearchAlias200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<RetrievalSearchAlias200Response>> retrievalSearchAlias({ 
    required String q,
    int? read = 5,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/search/{q}'.replaceAll('{' r'q' '}', encodeQueryParameter(_serializers, q, const FullType(String)).toString());
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

    final _queryParameters = <String, dynamic>{
      if (read != null) r'read': encodeQueryParameter(_serializers, read, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    RetrievalSearchAlias200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(RetrievalSearchAlias200Response),
      ) as RetrievalSearchAlias200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<RetrievalSearchAlias200Response>(
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
