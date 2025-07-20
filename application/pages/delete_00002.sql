prompt --application/pages/delete_00002
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>2264400788010036
,p_default_application_id=>100
,p_default_id_offset=>2602311683189360
,p_default_owner=>'SOL_SOLDATA'
);
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>2);
wwv_flow_imp.component_end;
end;
/
