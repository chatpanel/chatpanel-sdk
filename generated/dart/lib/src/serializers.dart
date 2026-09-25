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

import 'package:chatpanel/src/model/agent_def.dart';
import 'package:chatpanel/src/model/agent_export_plan.dart';
import 'package:chatpanel/src/model/agent_export_request.dart';
import 'package:chatpanel/src/model/agent_fidelity.dart';
import 'package:chatpanel/src/model/agent_fidelity_dropped_inner.dart';
import 'package:chatpanel/src/model/agents_export_def200_response.dart';
import 'package:chatpanel/src/model/agents_get_def200_response.dart';
import 'package:chatpanel/src/model/agents_list_defs200_response.dart';
import 'package:chatpanel/src/model/agents_rate_request.dart';
import 'package:chatpanel/src/model/agents_scorecards200_response.dart';
import 'package:chatpanel/src/model/audio_speech_request.dart';
import 'package:chatpanel/src/model/audit.dart';
import 'package:chatpanel/src/model/capabilities_document.dart';
import 'package:chatpanel/src/model/capabilities_document_server.dart';
import 'package:chatpanel/src/model/capability.dart';
import 'package:chatpanel/src/model/capability_stats.dart';
import 'package:chatpanel/src/model/chat_completion.dart';
import 'package:chatpanel/src/model/chat_completion_choices_inner.dart';
import 'package:chatpanel/src/model/chat_completion_chunk.dart';
import 'package:chatpanel/src/model/chat_completion_chunk_choices_inner.dart';
import 'package:chatpanel/src/model/chat_completion_request.dart';
import 'package:chatpanel/src/model/chat_content_part.dart';
import 'package:chatpanel/src/model/chat_message.dart';
import 'package:chatpanel/src/model/chat_message_content.dart';
import 'package:chatpanel/src/model/cloud_event.dart';
import 'package:chatpanel/src/model/decide_answer.dart';
import 'package:chatpanel/src/model/decide_answer_option.dart';
import 'package:chatpanel/src/model/decide_option.dart';
import 'package:chatpanel/src/model/decide_question.dart';
import 'package:chatpanel/src/model/decide_question_options_inner.dart';
import 'package:chatpanel/src/model/decide_request.dart';
import 'package:chatpanel/src/model/decide_response.dart';
import 'package:chatpanel/src/model/detect_request.dart';
import 'package:chatpanel/src/model/detect_response.dart';
import 'package:chatpanel/src/model/detected_entity.dart';
import 'package:chatpanel/src/model/engines_list200_response.dart';
import 'package:chatpanel/src/model/error_response.dart';
import 'package:chatpanel/src/model/error_response_error.dart';
import 'package:chatpanel/src/model/error_response_error_one_of.dart';
import 'package:chatpanel/src/model/events_cursor.dart';
import 'package:chatpanel/src/model/events_page.dart';
import 'package:chatpanel/src/model/events_stats.dart';
import 'package:chatpanel/src/model/events_stats_stats.dart';
import 'package:chatpanel/src/model/events_stream_event.dart';
import 'package:chatpanel/src/model/extract_request.dart';
import 'package:chatpanel/src/model/extract_response.dart';
import 'package:chatpanel/src/model/fusion_list.dart';
import 'package:chatpanel/src/model/fusion_list_fusions_inner.dart';
import 'package:chatpanel/src/model/fusion_list_fusions_inner_members_inner.dart';
import 'package:chatpanel/src/model/fusion_list_fusions_inner_members_inner_one_of.dart';
import 'package:chatpanel/src/model/fusion_list_kinds_value.dart';
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
import 'package:chatpanel/src/model/push_events_request.dart';
import 'package:chatpanel/src/model/push_events_response.dart';
import 'package:chatpanel/src/model/push_events_response_rejected_inner.dart';
import 'package:chatpanel/src/model/put_records_request.dart';
import 'package:chatpanel/src/model/put_records_response.dart';
import 'package:chatpanel/src/model/quarantined_skill.dart';
import 'package:chatpanel/src/model/read_request.dart';
import 'package:chatpanel/src/model/read_response.dart';
import 'package:chatpanel/src/model/read_restriction.dart';
import 'package:chatpanel/src/model/read_section.dart';
import 'package:chatpanel/src/model/recall_request.dart';
import 'package:chatpanel/src/model/recall_response.dart';
import 'package:chatpanel/src/model/record_type.dart';
import 'package:chatpanel/src/model/records_page.dart';
import 'package:chatpanel/src/model/redaction_preview.dart';
import 'package:chatpanel/src/model/redaction_preview_request.dart';
import 'package:chatpanel/src/model/remember_request.dart';
import 'package:chatpanel/src/model/remember_response.dart';
import 'package:chatpanel/src/model/rerank_request.dart';
import 'package:chatpanel/src/model/rerank_response.dart';
import 'package:chatpanel/src/model/rerank_result.dart';
import 'package:chatpanel/src/model/retrieval_read_alias200_response.dart';
import 'package:chatpanel/src/model/retrieval_search_alias200_response.dart';
import 'package:chatpanel/src/model/retrieval_search_alias200_response_data_inner.dart';
import 'package:chatpanel/src/model/run_event.dart';
import 'package:chatpanel/src/model/runtime_action_result.dart';
import 'package:chatpanel/src/model/runtime_document.dart';
import 'package:chatpanel/src/model/runtime_document_bridge.dart';
import 'package:chatpanel/src/model/runtime_document_processes.dart';
import 'package:chatpanel/src/model/runtime_engine_request.dart';
import 'package:chatpanel/src/model/runtime_service_request.dart';
import 'package:chatpanel/src/model/search_filters.dart';
import 'package:chatpanel/src/model/search_hit.dart';
import 'package:chatpanel/src/model/search_request.dart';
import 'package:chatpanel/src/model/search_response.dart';
import 'package:chatpanel/src/model/skill.dart';
import 'package:chatpanel/src/model/skills_get200_response.dart';
import 'package:chatpanel/src/model/skills_list200_response.dart';
import 'package:chatpanel/src/model/skills_quarantined200_response.dart';
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
import 'package:chatpanel/src/model/transcription.dart';
import 'package:chatpanel/src/model/transcription_segments_inner.dart';
import 'package:chatpanel/src/model/web_search_request.dart';
import 'package:chatpanel/src/model/web_search_response.dart';
import 'package:chatpanel/src/model/web_search_result.dart';
import 'package:chatpanel/src/model/who_am_i.dart';

part 'serializers.g.dart';

@SerializersFor([
  AgentDef,
  AgentExportPlan,
  AgentExportRequest,
  AgentFidelity,
  AgentFidelityDroppedInner,
  AgentsExportDef200Response,
  AgentsGetDef200Response,
  AgentsListDefs200Response,
  AgentsRateRequest,
  AgentsScorecards200Response,
  AudioSpeechRequest,
  Audit,
  CapabilitiesDocument,
  CapabilitiesDocumentServer,
  Capability,
  CapabilityStats,
  ChatCompletion,
  ChatCompletionChoicesInner,
  ChatCompletionChunk,
  ChatCompletionChunkChoicesInner,
  ChatCompletionRequest,
  ChatContentPart,
  ChatMessage,
  ChatMessageContent,
  CloudEvent,
  DecideAnswer,
  DecideAnswerOption,
  DecideOption,
  DecideQuestion,
  DecideQuestionOptionsInner,
  DecideRequest,
  DecideResponse,
  DetectRequest,
  DetectResponse,
  DetectedEntity,
  EnginesList200Response,
  ErrorResponse,
  ErrorResponseError,
  ErrorResponseErrorOneOf,
  EventsCursor,
  EventsPage,
  EventsStats,
  EventsStatsStats,
  EventsStreamEvent,
  ExtractRequest,
  ExtractResponse,
  FusionList,
  FusionListFusionsInner,
  FusionListFusionsInnerMembersInner,
  FusionListFusionsInnerMembersInnerOneOf,
  FusionListKindsValue,
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
  PushEventsRequest,
  PushEventsResponse,
  PushEventsResponseRejectedInner,
  PutRecordsRequest,
  PutRecordsResponse,
  QuarantinedSkill,
  ReadRequest,
  ReadResponse,
  ReadRestriction,
  ReadSection,
  RecallRequest,
  RecallResponse,
  RecordType,
  RecordsPage,
  RedactionPreview,
  RedactionPreviewRequest,
  RememberRequest,
  RememberResponse,
  RerankRequest,
  RerankResponse,
  RerankResult,
  RetrievalReadAlias200Response,
  RetrievalSearchAlias200Response,
  RetrievalSearchAlias200ResponseDataInner,
  RunEvent,
  RuntimeActionResult,
  RuntimeDocument,
  RuntimeDocumentBridge,
  RuntimeDocumentProcesses,
  RuntimeEngineRequest,
  RuntimeServiceRequest,
  SearchFilters,$SearchFilters,
  SearchHit,
  SearchRequest,
  SearchResponse,$SearchResponse,
  Skill,
  SkillsGet200Response,
  SkillsList200Response,
  SkillsQuarantined200Response,
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
  Transcription,
  TranscriptionSegmentsInner,
  WebSearchRequest,
  WebSearchResponse,
  WebSearchResult,
  WhoAmI,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(RunEvent)]),
        () => ListBuilder<RunEvent>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(FusionListFusionsInner)]),
        () => ListBuilder<FusionListFusionsInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Capability)]),
        () => ListBuilder<Capability>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CloudEvent)]),
        () => ListBuilder<CloudEvent>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(RetrievalSearchAlias200ResponseDataInner)]),
        () => ListBuilder<RetrievalSearchAlias200ResponseDataInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Skill)]),
        () => ListBuilder<Skill>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TranscriptionSegmentsInner)]),
        () => ListBuilder<TranscriptionSegmentsInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamRun)]),
        () => ListBuilder<TeamRun>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(QuarantinedSkill)]),
        () => ListBuilder<QuarantinedSkill>(),
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
        const FullType(BuiltList, [FullType(ChatCompletionChoicesInner)]),
        () => ListBuilder<ChatCompletionChoicesInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(DecideAnswer)]),
        () => MapBuilder<String, DecideAnswer>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AgentDef)]),
        () => ListBuilder<AgentDef>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType(JsonObject)])]),
        () => ListBuilder<BuiltMap<String, JsonObject>>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DecideQuestionOptionsInner)]),
        () => ListBuilder<DecideQuestionOptionsInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Project)]),
        () => ListBuilder<Project>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(int)]),
        () => MapBuilder<String, int>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PushEventsResponseRejectedInner)]),
        () => ListBuilder<PushEventsResponseRejectedInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(HistoryItem)]),
        () => ListBuilder<HistoryItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(DecideQuestion)]),
        () => MapBuilder<String, DecideQuestion>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Memory)]),
        () => ListBuilder<Memory>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DecideAnswerOption)]),
        () => ListBuilder<DecideAnswerOption>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(PrefSection)]),
        () => MapBuilder<String, PrefSection>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IngestRequestUpsertsInner)]),
        () => ListBuilder<IngestRequestUpsertsInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ReadSection)]),
        () => ListBuilder<ReadSection>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(FusionListFusionsInnerMembersInner)]),
        () => ListBuilder<FusionListFusionsInnerMembersInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AgentFidelityDroppedInner)]),
        () => ListBuilder<AgentFidelityDroppedInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SearchHit)]),
        () => ListBuilder<SearchHit>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(FusionListKindsValue)]),
        () => MapBuilder<String, FusionListKindsValue>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(WebSearchResult)]),
        () => ListBuilder<WebSearchResult>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        () => MapBuilder<String, JsonObject?>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(RerankResult)]),
        () => ListBuilder<RerankResult>(),
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
        const FullType(BuiltList, [FullType(DetectedEntity)]),
        () => ListBuilder<DetectedEntity>(),
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
