//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:chatpanel/src/date_serializer.dart';
import 'package:chatpanel/src/model/date.dart';

import 'package:chatpanel/src/model/agents_rate_request.dart';
import 'package:chatpanel/src/model/agents_scorecards200_response.dart';
import 'package:chatpanel/src/model/audit.dart';
import 'package:chatpanel/src/model/chat_completion.dart';
import 'package:chatpanel/src/model/chat_completion_choices_inner.dart';
import 'package:chatpanel/src/model/chat_completion_chunk.dart';
import 'package:chatpanel/src/model/chat_completion_chunk_choices_inner.dart';
import 'package:chatpanel/src/model/chat_completion_request.dart';
import 'package:chatpanel/src/model/chat_content_part.dart';
import 'package:chatpanel/src/model/chat_message.dart';
import 'package:chatpanel/src/model/chat_message_content.dart';
import 'package:chatpanel/src/model/engines_list200_response.dart';
import 'package:chatpanel/src/model/error_response.dart';
import 'package:chatpanel/src/model/error_response_error.dart';
import 'package:chatpanel/src/model/error_response_error_one_of.dart';
import 'package:chatpanel/src/model/gateway_pair_request.dart';
import 'package:chatpanel/src/model/health.dart';
import 'package:chatpanel/src/model/history_get200_response.dart';
import 'package:chatpanel/src/model/history_ingest200_response.dart';
import 'package:chatpanel/src/model/history_item.dart';
import 'package:chatpanel/src/model/history_page.dart';
import 'package:chatpanel/src/model/history_record.dart';
import 'package:chatpanel/src/model/history_related200_response.dart';
import 'package:chatpanel/src/model/history_status.dart';
import 'package:chatpanel/src/model/history_status_lossless.dart';
import 'package:chatpanel/src/model/history_stream_event.dart';
import 'package:chatpanel/src/model/ingest_request.dart';
import 'package:chatpanel/src/model/ingest_request_upserts_inner.dart';
import 'package:chatpanel/src/model/inline_object.dart';
import 'package:chatpanel/src/model/inline_object1.dart';
import 'package:chatpanel/src/model/memory.dart';
import 'package:chatpanel/src/model/memory_forget200_response.dart';
import 'package:chatpanel/src/model/memory_forget_request.dart';
import 'package:chatpanel/src/model/memory_list.dart';
import 'package:chatpanel/src/model/memory_source.dart';
import 'package:chatpanel/src/model/memory_sync_request.dart';
import 'package:chatpanel/src/model/memory_sync_response.dart';
import 'package:chatpanel/src/model/model.dart';
import 'package:chatpanel/src/model/model_list.dart';
import 'package:chatpanel/src/model/paired.dart';
import 'package:chatpanel/src/model/pairing_code.dart';
import 'package:chatpanel/src/model/pref_section.dart';
import 'package:chatpanel/src/model/prefs.dart';
import 'package:chatpanel/src/model/prefs_delete200_response.dart';
import 'package:chatpanel/src/model/prefs_event.dart';
import 'package:chatpanel/src/model/prefs_write.dart';
import 'package:chatpanel/src/model/prefs_write_result.dart';
import 'package:chatpanel/src/model/project.dart';
import 'package:chatpanel/src/model/projects_create_request.dart';
import 'package:chatpanel/src/model/projects_job_board200_response.dart';
import 'package:chatpanel/src/model/projects_list200_response.dart';
import 'package:chatpanel/src/model/projects_patch_job_request.dart';
import 'package:chatpanel/src/model/projects_post_job_request.dart';
import 'package:chatpanel/src/model/projects_recruit_request.dart';
import 'package:chatpanel/src/model/put_records_request.dart';
import 'package:chatpanel/src/model/put_records_response.dart';
import 'package:chatpanel/src/model/recall_request.dart';
import 'package:chatpanel/src/model/recall_response.dart';
import 'package:chatpanel/src/model/record_type.dart';
import 'package:chatpanel/src/model/records_page.dart';
import 'package:chatpanel/src/model/redaction_preview.dart';
import 'package:chatpanel/src/model/redaction_preview_request.dart';
import 'package:chatpanel/src/model/remember_request.dart';
import 'package:chatpanel/src/model/remember_response.dart';
import 'package:chatpanel/src/model/run_event.dart';
import 'package:chatpanel/src/model/search_filters.dart';
import 'package:chatpanel/src/model/search_hit.dart';
import 'package:chatpanel/src/model/search_request.dart';
import 'package:chatpanel/src/model/search_response.dart';
import 'package:chatpanel/src/model/skill.dart';
import 'package:chatpanel/src/model/skills_get200_response.dart';
import 'package:chatpanel/src/model/skills_list200_response.dart';
import 'package:chatpanel/src/model/smart_search_request.dart';
import 'package:chatpanel/src/model/smart_search_response.dart';
import 'package:chatpanel/src/model/team_run.dart';
import 'package:chatpanel/src/model/team_run_create.dart';
import 'package:chatpanel/src/model/teams_answer_request.dart';
import 'package:chatpanel/src/model/teams_append_run_events_request.dart';
import 'package:chatpanel/src/model/teams_checkpoint200_response.dart';
import 'package:chatpanel/src/model/teams_claim_request.dart';
import 'package:chatpanel/src/model/teams_decide_request.dart';
import 'package:chatpanel/src/model/teams_handoff_request.dart';
import 'package:chatpanel/src/model/teams_list_runs200_response.dart';
import 'package:chatpanel/src/model/teams_post_request.dart';
import 'package:chatpanel/src/model/who_am_i.dart';

part 'serializers.g.dart';

@SerializersFor([
  AgentsRateRequest,
  AgentsScorecards200Response,
  Audit,
  ChatCompletion,
  ChatCompletionChoicesInner,
  ChatCompletionChunk,
  ChatCompletionChunkChoicesInner,
  ChatCompletionRequest,
  ChatContentPart,
  ChatMessage,
  ChatMessageContent,
  EnginesList200Response,
  ErrorResponse,
  ErrorResponseError,
  ErrorResponseErrorOneOf,
  GatewayPairRequest,
  Health,
  HistoryGet200Response,
  HistoryIngest200Response,
  HistoryItem,
  HistoryPage,
  HistoryRecord,
  HistoryRelated200Response,
  HistoryStatus,
  HistoryStatusLossless,
  HistoryStreamEvent,
  IngestRequest,
  IngestRequestUpsertsInner,
  InlineObject,
  InlineObject1,
  Memory,
  MemoryForget200Response,
  MemoryForgetRequest,
  MemoryList,
  MemorySource,
  MemorySyncRequest,
  MemorySyncResponse,
  Model,
  ModelList,
  Paired,
  PairingCode,
  PrefSection,
  Prefs,
  PrefsDelete200Response,
  PrefsEvent,
  PrefsWrite,
  PrefsWriteResult,
  Project,
  ProjectsCreateRequest,
  ProjectsJobBoard200Response,
  ProjectsList200Response,
  ProjectsPatchJobRequest,
  ProjectsPostJobRequest,
  ProjectsRecruitRequest,
  PutRecordsRequest,
  PutRecordsResponse,
  RecallRequest,
  RecallResponse,
  RecordType,
  RecordsPage,
  RedactionPreview,
  RedactionPreviewRequest,
  RememberRequest,
  RememberResponse,
  RunEvent,
  SearchFilters,$SearchFilters,
  SearchHit,
  SearchRequest,
  SearchResponse,$SearchResponse,
  Skill,
  SkillsGet200Response,
  SkillsList200Response,
  SmartSearchRequest,
  SmartSearchResponse,
  TeamRun,
  TeamRunCreate,
  TeamsAnswerRequest,
  TeamsAppendRunEventsRequest,
  TeamsCheckpoint200Response,
  TeamsClaimRequest,
  TeamsDecideRequest,
  TeamsHandoffRequest,
  TeamsListRuns200Response,
  TeamsPostRequest,
  WhoAmI,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(PrefSection)]),
        () => MapBuilder<String, PrefSection>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(RunEvent)]),
        () => ListBuilder<RunEvent>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IngestRequestUpsertsInner)]),
        () => ListBuilder<IngestRequestUpsertsInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Skill)]),
        () => ListBuilder<Skill>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamRun)]),
        () => ListBuilder<TeamRun>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Model)]),
        () => ListBuilder<Model>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ChatMessage)]),
        () => ListBuilder<ChatMessage>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SearchHit)]),
        () => ListBuilder<SearchHit>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ChatCompletionChoicesInner)]),
        () => ListBuilder<ChatCompletionChoicesInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType(JsonObject)])]),
        () => ListBuilder<BuiltMap<String, JsonObject>>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Project)]),
        () => ListBuilder<Project>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        () => MapBuilder<String, JsonObject?>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(int)]),
        () => MapBuilder<String, int>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(HistoryItem)]),
        () => ListBuilder<HistoryItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ChatCompletionChunkChoicesInner)]),
        () => ListBuilder<ChatCompletionChunkChoicesInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Memory)]),
        () => ListBuilder<Memory>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(JsonObject)]),
        () => MapBuilder<String, JsonObject>(),
      )
      ..add(SearchFilters.serializer)
      ..add(SearchResponse.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
