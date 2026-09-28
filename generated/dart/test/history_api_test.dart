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
    //Future<RecordsPage> historyRecords({ int since, String cursor, int limit, String kind, int bytes }) async
    test('test historyRecords', () async {
      // TODO
    });

    // The records most connected to one record.
    //
    //Future<HistoryRelated200Response> historyRelated(String id, { int limit }) async
    test('test historyRelated', () async {
      // TODO
    });

    // A question about the person's own data, researched over the whole store.
    //
    // The shared bounded loop over the warm store: the question is framed (kind of record, people named, dates, the latest or the first, a count, counts per person or per month/week/day), every matching record is queried — sorted by date when it asks for the last one, counted when it asks how many — the top records are read in full, and the result carries what was searched, found and read, plus `attachment`: one block to hand a model, with record ids to cite. Pass `next` back as `previous` to continue the question (\"no, even later\", \"what was it about\"). Open like the other history reads; naming a `model` (to condense long records and check the evidence) runs a model on the caller's behalf and needs the gateway token. 
    //
    //Future<ResearchResponse> historyResearch(ResearchRequest researchRequest) async
    test('test historyResearch', () async {
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
