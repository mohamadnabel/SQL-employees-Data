prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_default_workspace_id=>84058159986156171111
);
end;
/
prompt  WORKSPACE 84058159986156171111
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   13:25 Sunday March 31, 2024
--   Exported By:     MOHAMAD.NABEEL@OUTLOOK.COM
--   Export Type:     Workspace Export
--   Version:         23.2.4
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_230200
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>84058159986156171111);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace MOHNABEEL_DATABASE_TEST...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 84059051715592187196
 ,p_provisioning_company_id => 84058159986156171111
 ,p_short_name => 'MOHNABEEL_DATABASE_TEST'
 ,p_display_name => 'MOHNABEEL_DATABASE_TEST'
 ,p_first_schema_provisioned => 'WKSP_MOHNABEELDATABASETEST'
 ,p_company_schemas => 'WKSP_MOHNABEELDATABASETEST'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'MOHNABEE'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'MOHNABEEL_DATABASE_TEST'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1860327649224503,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1860264752224503,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1860157151224499,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '84058159845119171111',
  p_user_name                    => 'MOHAMAD.NABEEL@OUTLOOK.COM',
  p_first_name                   => 'mohammad',
  p_last_name                    => 'hussein',
  p_description                  => '',
  p_email_address                => 'mohamad.nabeel@outlook.com',
  p_web_password                 => '5D42611FB14FDC64B05D6F1A78C14DE46F3C24F772B5E5A1D19BC6377ADAC3195DC8629040552A74BD1EABD73EA61671F12C4EB88962B8A084F8D8712574B142',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_MOHNABEELDATABASETEST',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202403242240','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
