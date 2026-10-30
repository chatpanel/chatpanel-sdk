import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for CapabilitiesApi
void main() {
  final instance = Chatpanel().getCapabilitiesApi();

  group(CapabilitiesApi, () {
    // Typed decisions over a text — a choice, a score or a yes/no, each with a probability.
    //
    // ChatPanel's `decide` signature (docs/capability-endpoints.md §4.2): `state` is the text judged, `questions` are keyed by identifier — a `choice` picks one of its `options`, a `score` places the state on `options` read as an ordered rubric, a `noul` is yes/no. Served BY PROXY through the adapter the config names: the `opendecision` container started under Settings › Runtime (TypeSafe's `/v1/systemone` shape, loopback-only), or a server `capabilities.decide` names (a Jev endpoint with a token, another gateway). `calibrated` in the response says whether `p` may be read as a probability — an NLI concentration (OpenDecision) is not one. Errors as `/v1/rerank`. 
    //
    //Future<DecideResponse> capabilitiesDecide(DecideRequest decideRequest) async
    test('test capabilitiesDecide', () async {
      // TODO
    });

    // Find entities in text — the model's own labels, with offsets and scores.
    //
    // The standard `detect` signature over the in-process entity detector. Labels are the model's own (`private_person`, `PER`, `GIVENNAME`…) — the client maps them; the vocabulary is listed by `GET /v1/capabilities`. `budgetMs` is refused (503 `over_budget`) from the provider's own latency record before the model runs, never missed. An engine that is still loading answers 503 `detector_unready`; an empty `entities` on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. 
    //
    //Future<DetectResponse> capabilitiesDetect(DetectRequest detectRequest) async
    test('test capabilitiesDetect', () async {
      // TODO
    });

    // One unit vector per input — OpenAI-shaped embeddings, in the gateway's own process by default.
    //
    // The `embed` capability (docs/capability-endpoints.md C4), served since 0.101.0 by the in-process embedder (`Xenova/multilingual-e5-small` by default, 384 dimensions, q8 on the ONNX runtime; `Xenova/all-MiniLM-L6-v2` as the lighter English-only pick) — or by the server `capabilities.embed` names, through its adapter. `input` is a string or up to 256 strings; `kind` says whether they are queries or passages (E5 prefixes each). The vectors are unit length, so cosine is a dot product. 503 `provider_warming` while the model downloads (the first call starts it; a caller is never held), 404 `no_provider` when it is turned off (`capabilities.embed.provider = none`), `budgetMs` refused from the record like every capability. The knowledge base (`/v1/kb`) uses this for its vector lane; it works on words and the graph until the model is on disk. 
    //
    //Future<EmbedResponse> capabilitiesEmbed(EmbedRequest embedRequest) async
    test('test capabilitiesEmbed', () async {
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

    // Order documents by relevance to a query — a cross-encoder, no language model.
    //
    // The Cohere / Jina rerank shape, served BY PROXY: the gateway forwards to the reranker it is pointed at — the `reranker` container started under Settings › Runtime (Text Embeddings Inference with `BAAI/bge-reranker-v2-m3`, loopback-only), or the server `capabilities.rerank` names — through the adapter that speaks its wire, and validates the answer against the contract before it leaves (a wrong shape is 502 `bad_shape`, never a bad order). `budgetMs` is refused (503 `over_budget`) from the gateway's own latency record before dialling. 404 `no_provider` until a provider is configured; 503 `provider_unavailable` when it does not answer. `GET /v1/capabilities` lists it only while configured. 
    //
    //Future<RerankResponse> capabilitiesRerank(RerankRequest rerankRequest) async
    test('test capabilitiesRerank', () async {
      // TODO
    });

  });
}
