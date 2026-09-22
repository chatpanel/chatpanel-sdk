import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for AudioApi
void main() {
  final instance = Chatpanel().getAudioApi();

  group(AudioApi, () {
    // Text to speech (OpenAI-compatible) — a WAV back.
    //
    // `{ input, voice?, speed?, response_format? }` → `audio/wav`, from the gateway's own voice (Kokoro / VITS in-process) or the provider its table names (an ElevenLabs or OpenAI voice — then the text leaves the machine, and the audit says so). Not redacted: synthesis is for the person who wrote the text. `/tts` is the same handler with `text`. 
    //
    //Future<Uint8List> audioSpeech(AudioSpeechRequest audioSpeechRequest) async
    test('test audioSpeech', () async {
      // TODO
    });

    // Transcribe an audio file (OpenAI-compatible).
    //
    // OpenAI's shape over the gateway's own transcriber — the in-process whisper, or the provider its capability table names (a hosted API, a container the Runtime started). A WAV is decoded by the gateway itself; mp3/m4a/webm/ogg/flac go through `ffmpeg` when it is on the gateway's PATH, else 415 says so. Beyond OpenAI: `diarize=true` puts a `speaker` on every segment of `verbose_json`. The live microphone keeps the session API (`/stt/sessions`); this is for a file. 
    //
    //Future<Transcription> audioTranscribe(MultipartFile file, { String model, String language, String responseFormat, String diarize }) async
    test('test audioTranscribe', () async {
      // TODO
    });

  });
}
