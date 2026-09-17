import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for HistoryApi
void main() {
  final instance = Chatpanel().getHistoryApi();

  group(HistoryApi, () {
    // One full warm record, optionally paged by characters.
    //
    //Future<HistoryGet200Response> historyGet(String id, { int maxChars, int offset }) async
    test('test historyGet', () async {
      // TODO
    });

    // Push flattened (lossy) records into the warm index.
    //
    //Future<HistoryIngest200Response> historyIngest(IngestRequest ingestRequest) async
    test('test historyIngest', () async {
      // TODO
    });

    // A page of the warm index — metadata only, no bodies.
    //
    //Future<HistoryPage> historyList({ int limit, int offset, RecordType type }) async
    test('test historyList', () async {
      // TODO
    });

    // Push whole records; the gateway derives the searchable text itself.
    //
    //Future<PutRecordsResponse> historyPutRecords(PutRecordsRequest putRecordsRequest) async
    test('test historyPutRecords', () async {
      // TODO
    });

    // WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.
    //
    // The lossless tier. A gateway without the SQLite store answers 501.
    //
    //Future<RecordsPage> historyRecords({ int since, String cursor, int limit, String kind }) async
    test('test historyRecords', () async {
      // TODO
    });

    // The records most connected to one record.
    //
    //Future<HistoryRelated200Response> historyRelated(String id, { int limit }) async
    test('test historyRelated', () async {
      // TODO
    });

    // One keyword query over the warm index.
    //
    //Future<SearchResponse> historySearch(SearchRequest searchRequest) async
    test('test historySearch', () async {
      // TODO
    });

    // Several phrasings at once, rank-fused; briefs lead.
    //
    //Future<SmartSearchResponse> historySmartSearch(SmartSearchRequest smartSearchRequest) async
    test('test historySmartSearch', () async {
      // TODO
    });

    // Size and freshness of the warm index (and the lossless tier from 0.10.0).
    //
    //Future<HistoryStatus> historyStatus() async
    test('test historyStatus', () async {
      // TODO
    });

    // Live record changes — `hello` once, then a `records` event per change.
    //
    //Future<String> historyStream() async
    test('test historyStream', () async {
      // TODO
    });

  });
}
