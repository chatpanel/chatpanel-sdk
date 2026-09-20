import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for CapabilitiesApi
void main() {
  final instance = Chatpanel().getCapabilitiesApi();

  group(CapabilitiesApi, () {
    // Find entities in text — the model's own labels, with offsets and scores.
    //
    // The standard `detect` signature over the in-process entity detector. Labels are the model's own (`private_person`, `PER`, `GIVENNAME`…) — the client maps them; the vocabulary is listed by `GET /v1/capabilities`. `budgetMs` is refused (503 `over_budget`) from the provider's own latency record before the model runs, never missed. An engine that is still loading answers 503 `detector_unready`; an empty `entities` on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. 
    //
    //Future<DetectResponse> capabilitiesDetect(DetectRequest detectRequest) async
    test('test capabilitiesDetect', () async {
      // TODO
    });

    // What this provider can do — which capabilities, models, measured cost and runtime state.
    //
    // The discovery document a client chooses a provider from: one entry per capability (`detect`, `stt`, `tts` today; `decide`, `rerank`, `embed` as they land), each at its standard route, with the models it can serve, the loaded model's own label vocabulary (`detect`), the measured latency record, and the runtime's state. Never loads a model. 
    //
    //Future<CapabilitiesDocument> capabilitiesList() async
    test('test capabilitiesList', () async {
      // TODO
    });

  });
}
