import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for SearchTrailAsk
void main() {
  final instance = SearchTrailAskBuilder();
  // TODO add properties to the builder and call build()

  group(SearchTrailAsk, () {
    // The engine or provider asked — `searxng`, `serp`, `duckduckgo`, `startpage`, `bing`, `api:<id>`.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // `answered` · `empty` (answered, found nothing) · `refused` (a refusing status, a timeout or no answer at all).
    // String outcome
    test('to test the property `outcome`', () async {
      // TODO
    });

    // How many results it returned.
    // int found
    test('to test the property `found`', () async {
      // TODO
    });

    // The HTTP status of a refusal (429, 403, …), when there was one.
    // int status
    test('to test the property `status`', () async {
      // TODO
    });

    // It did not answer within its share of the budget.
    // bool timedOut
    test('to test the property `timedOut`', () async {
      // TODO
    });

    // It failed at the network — no status at all.
    // bool network
    test('to test the property `network`', () async {
      // TODO
    });

  });
}
