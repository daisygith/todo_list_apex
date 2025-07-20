prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>2264400788010036
,p_default_application_id=>100
,p_default_id_offset=>2602311683189360
,p_default_owner=>'SOL_SOLDATA'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'classicB-07.07'
,p_alias=>'CLASSICB-07-07'
,p_step_title=>'classicB-07.07'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function editTask(id, description, status, finishDate) {',
'  apex.item("P2_ID").setValue(id);',
'  apex.item("P2_DESCRIPTION").setValue(description);',
'  apex.item("P2_STATUS").setValue(status);',
'',
'',
'  apex.item("P2_FINISH_DATE").setValue(finishDate);',
unistr('  apex.message.showPageSuccess("Za\0142adowano zadanie do edycji.");'),
'',
'}',
'',
'',
'',
'function deleteTask(id) {',
'  console.log("Usuwam ID (JS):", id);',
'',
unistr('  if (confirm("Czy na pewno usun\0105\0107 to zadanie?")) {'),
'  apex.server.process("DELETE_TASK_PROCESS", {',
'    x01: id',
'  }, {',
'      dataType: "text",  //DODAJ TO',
'    success: function () {',
unistr('      console.log("SUKCES: zadanie usuni\0119te");'),
unistr('      apex.message.showPageSuccess("Zadanie usuni\0119te.");'),
'      apex.region("TASK_GRID").refresh();',
'    },',
'    error: function (xhr, status, errorThrown) {',
unistr('      console.error("B\0141\0104D Z SERWERA:", xhr.responseText);'),
'      apex.message.showErrors([{',
'        type: "error",',
unistr('        message: "B\0142\0105d usuwania zadania: " + xhr.responseText'),
'      }]);',
'    }',
'  });',
'  }',
'}',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body {',
'  background-color: #f5f5f5;',
'    background: linear-gradient(-225deg, #473b7b 0%, #3584a7 51%, #13ac9c 100%);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9519102635672035)
,p_plug_name=>'Classic Report todo'
,p_title=>'TASK_GRID'
,p_region_name=>'TASK_GRID'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    t.id as "ID",',
'    REPLACE(t.description, '''''''', ''\&#39;'') as "DESCRIPTION",',
'    REPLACE(t.status, '''''''', ''\&#39;'') as "STATUS",',
'    TO_CHAR(t.finish_date) as "FINISH_DATE",',
'    NULL as "ACTIONS"',
'FROM ',
'    TASK t',
'    ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'TASK_GRID'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3708565221602481)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3708739036602482)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3708776000602483)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3708949882602484)
,p_name=>'FINISH_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FINISH_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Finish Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3709028293602485)
,p_name=>'ACTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIONS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Actions'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<a href="javascript:void(0);" onclick="editTask(&ID., ''&DESCRIPTION.'', ''&STATUS.'', ''&FINISH_DATE.'')">',
    '  <span class="fa fa-edit" title="Edit"></span>',
    '</a>',
    '&nbsp;',
    '<a href="javascript:void(0);" onclick="deleteTask(&ID.)">',
    '  <span class="fa fa-trash" title="Delete"></span>',
    '</a>',
    '')))).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3708536667602480)
,p_internal_uid=>6310848350791840
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3725441161669912)
,p_interactive_grid_id=>wwv_flow_imp.id(3708536667602480)
,p_static_id=>'31224'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3725641908669912)
,p_report_id=>wwv_flow_imp.id(3725441161669912)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3726091674669915)
,p_view_id=>wwv_flow_imp.id(3725641908669912)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3708565221602481)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3726956915669918)
,p_view_id=>wwv_flow_imp.id(3725641908669912)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3708739036602482)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3727857680669920)
,p_view_id=>wwv_flow_imp.id(3725641908669912)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3708776000602483)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3728809725669922)
,p_view_id=>wwv_flow_imp.id(3725641908669912)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3708949882602484)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3729683679669923)
,p_view_id=>wwv_flow_imp.id(3725641908669912)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3709028293602485)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12942272004470564)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(607550042623799)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(12942272004470564)
,p_button_name=>'BTN_SAVE_TASK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'SAVE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3223134382839240)
,p_name=>'P2_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12942272004470564)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3291218841048000)
,p_name=>'P2_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12942272004470564)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select status r, status d from slo_status;'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12947759652470601)
,p_name=>'P2_DESCRIPTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12942272004470564)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12948014173470603)
,p_name=>'P2_FINISH_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12942272004470564)
,p_prompt=>'Finish Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12989218082392966)
,p_name=>'P2_SUCCESS_FLAG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12942272004470564)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(613617948623815)
,p_name=>'Clear Form After Submit'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(614131965623815)
,p_event_id=>wwv_flow_imp.id(613617948623815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'SUCCESS_FLAG'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DESCRIPTION,P2_FINISH_DATE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P2_SUCCESS_FLAG'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(619692159623816)
,p_name=>'Edit Task Handler'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'edit-task'
,p_required_patch=>wwv_flow_imp.id(3659967555822823)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(621203370623818)
,p_event_id=>wwv_flow_imp.id(619692159623816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'SetValueID'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'event.detail.id',
''))
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(620253549623818)
,p_event_id=>wwv_flow_imp.id(619692159623816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'SetValueDescription'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'event.detail.description',
'',
''))
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(622722936623818)
,p_event_id=>wwv_flow_imp.id(619692159623816)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'SetValueFinishDate'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'event.detail.finishDate',
''))
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(620721193623818)
,p_event_id=>wwv_flow_imp.id(619692159623816)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'SetValueStatusEdit'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'event.detail.status',
'',
''))
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(621712561623818)
,p_event_id=>wwv_flow_imp.id(619692159623816)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_STATUS_EDIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(622268428623818)
,p_event_id=>wwv_flow_imp.id(619692159623816)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_STATUS_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(615942783623816)
,p_name=>'SAVE_TASK'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(607550042623799)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(616472374623816)
,p_event_id=>wwv_flow_imp.id(615942783623816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set_Value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(3659967555822823)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(616943026623816)
,p_event_id=>wwv_flow_imp.id(615942783623816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Submit Page'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'BTN_SAVE_TASK'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(504344804789360)
,p_event_id=>wwv_flow_imp.id(615942783623816)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Clear Form After Save'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ID,P2_DESCRIPTION,P2_STATUS,P2_FINISH_DATE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P2_SUCCESS_FLAG'
,p_client_condition_expression=>'Y'
,p_build_option_id=>wwv_flow_imp.id(3659967555822823)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(610993248623813)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_TASK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--   IF TRIM(:P2_ID) IS NULL THEN',
'    ADD_TASK(',
'        p_description => :P2_DESCRIPTION,',
'        p_status => :P2_STATUS,',
'        p_finish_date => :P2_FINISH_DATE',
'    );',
'',
'    -- END IF;',
'  :P2_SUCCESS_FLAG := ''Y'';',
'END;',
'',
'        -- p_status => :P2_STATUS_ADD,'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(607550042623799)
,p_process_when=>'P2_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>3213304931813173
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(610596449623811)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_TASK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--   IF TRIM(:P2_ID) IS NOT NULL THEN',
'    UPDATE_TASK(',
'        p_id            => :P2_ID,',
'        p_description   => :P2_DESCRIPTION,',
'        p_status        => :P2_STATUS,',
'        p_finish_date   => :P2_FINISH_DATE',
'    );',
'    -- END IF;',
'',
'    :P2_SUCCESS_FLAG := ''Y'';',
'    :P2_ID := NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(607550042623799)
,p_process_when=>'P2_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3212908132813171
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(610287929623811)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_TASK_PROCESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'  DELETE_TASK(p_id => TO_NUMBER(apex_application.g_x01));',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>3212599612813171
);
wwv_flow_imp.component_end;
end;
/
