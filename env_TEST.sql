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
--   Date and Time:   13:21 Sunday March 31, 2024
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
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 84058515528264680408,
    p_user_id => 84058159845119171111,
    p_password => '5D42611FB14FDC64B05D6F1A78C14DE46F3C24F772B5E5A1D19BC6377ADAC3195DC8629040552A74BD1EABD73EA61671F12C4EB88962B8A084F8D8712574B142');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 84059051998614187206,
    p_user_id => 84058159845119171111,
    p_password => '22372ABB5163741574ABEE24684947EBA932FEF1E6522BC9F828C776B017248843FB1927C4C4D9AE83FA1879CD84C2EC077E4A8EC645B93E0BCF5AE3DB444A4C');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 84059996166689244365,
    p_user_id => 'MOHAMAD.NABEEL@OUTLOOK.COM',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '186:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 86939220029438793754,
    p_user_id => 'MOHAMAD.NABEEL@OUTLOOK.COM',
    p_preference_name => 'F4500_1901781580041201_SPLITTER_STATE',
    p_attribute_value => '280:true',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 84588529478216850903,
    p_user_id => 'MOHAMAD.NABEEL@OUTLOOK.COM',
    p_preference_name => 'FSP4500_P24_R12183729610626245_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 86937956458658751346,
    p_user_id => 'MOHAMAD.NABEEL@OUTLOOK.COM',
    p_preference_name => 'FSP_IR_4000_P763_W480600211834691519',
    p_attribute_value => '480602703192699428____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 86937395569595740637,
    p_user_id => 'MOHAMAD.NABEEL@OUTLOOK.COM',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 84539474585887279791
    ,p_query_owner => 'WKSP_MOHNABEELDATABASETEST'
    ,p_title => 'database_edit'
 ,p_qb_sql => 
'select sal from emp where sal <= 1000'||wwv_flow.LF||
'select * from emp where deptno=20'||wwv_flow.LF||
'select * from emp'||wwv_flow.LF||
'SELECT COUNT(*) FROM emp WHERE deptno = 10;'||wwv_flow.LF||
'SELECT COUNT(*) FROM emp WHERE SAL = 3000;'||wwv_flow.LF||
'update emp set sal = sal * 1.05 where sal >= 1000'||wwv_flow.LF||
'delete from emp where deptno = 30'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) '||wwv_flow.LF||
'VALUES (1, ''mohammad'', ''qa manual'', 7839, TO_DATE(''2010-10-10'', ''Y'||
'YYY-MM-DD''), 3500, NULL, 20);'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252108','YYYYMMDDHH24MI')
    ,p_last_updated_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_last_updated_on => to_date('202403252108','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 84599819882047649511
    ,p_query_owner => 'WKSP_MOHNABEELDATABASETEST'
    ,p_title => 'create_tabel'
 ,p_qb_sql => 
'create table students ('||wwv_flow.LF||
'    student_id number (5) primary key,'||wwv_flow.LF||
'    student_name varchar2(10),'||wwv_flow.LF||
'    student_rate varchar2(10),'||wwv_flow.LF||
'    student_mobileNumber number(10)'||wwv_flow.LF||
''||wwv_flow.LF||
')'||wwv_flow.LF||
'select * from students'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into students (student_id,student_name,student_rate,student_mobileNumber)'||wwv_flow.LF||
'values(3215,''mohammad'',''very good'',0791425288)'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into students (student_id,student_name,student_rate,student_mobileNumber)'||wwv_flow.LF||
'va'||
'lues(1583,''younis'',''good'',0798456111)'||wwv_flow.LF||
''||wwv_flow.LF||
'update students set STUDENT_RATE = ''bad'' where STUDENT_ID= 1533'||wwv_flow.LF||
''||wwv_flow.LF||
'delete from students where STUDENT_ID =1583'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260056','YYYYMMDDHH24MI')
    ,p_last_updated_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_last_updated_on => to_date('202403260056','YYYYMMDDHH24MI'));
end;
/
----------------
--sql scripts
--
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84059152567665204850
 ,p_command => 
'select * from emp'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403242242','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84516470572289272674
 ,p_command => 
'select * from emp'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251946','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84516556108987287036
 ,p_command => 
'select * from emp where deptno=10'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251948','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84517130611964785330
 ,p_command => 
'select ENAME,JOB from emp'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251946','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84517902680066796003
 ,p_command => 
'select * from emp'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251948','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84517990413043802580
 ,p_command => 
'select * from emp '||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251949','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518080481622302104
 ,p_command => 
'select count(select * from emp where deptno=10'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251950','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518084054732303429
 ,p_command => 
'select count(select * from emp where deptno=10)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251951','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518098051895306130
 ,p_command => 
'select count(where deptno=10)from emp '
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251951','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518196065655322230
 ,p_command => 
'SELECT COUNT(*) FROM emp WHERE SAL => 3000;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518198170609323060
 ,p_command => 
'SELECT COUNT(*) FROM emp WHERE SAL = 3000;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518272082935809943
 ,p_command => 
'select count(emp where deptno=10)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251950','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518300979932813773
 ,p_command => 
'select count(select * from emp where deptno=10'||wwv_flow.LF||
')'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251950','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518337462914816384
 ,p_command => 
'select count(where deptno=10)select * from emp '
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251951','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518696587810824804
 ,p_command => 
'SELECT COUNT(*) FROM emp WHERE deptno = 10;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251952','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518746723175830558
 ,p_command => 
'select * from emp '||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251953','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518811948718325816
 ,p_command => 
'SELECT COUNT(*) FROM emp WHERE SAL >= 3000;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84518825334567330942
 ,p_command => 
'SELECT COUNT(*) FROM emp WHERE SAL > 3000;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251955','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84519740472662851443
 ,p_command => 
'SELECT COUNT(*) FROM emp WHERE SAL = 3000;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251957','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84520353299615862622
 ,p_command => 
'update emp set sal = sal * 1.05'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251959','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84520354728971863525
 ,p_command => 
'select * from emp '||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403251959','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84524752747250520010
 ,p_command => 
'select sal from emp where sal >= 1000'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252027','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84524761834347522442
 ,p_command => 
'select sal from emp where sal <= 1000'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252027','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84526355201513028315
 ,p_command => 
'update emp set sal = sal * 1.05 where sal >= 1000'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252026','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84527866472473553734
 ,p_command => 
'select * from emp where deptno=10'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252032','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84527884281402555669
 ,p_command => 
'delete from emp where deptno=10'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252033','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84527918651831559461
 ,p_command => 
'delete from emp where deptno = 10'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252033','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84527921352874560186
 ,p_command => 
'delete from emp where deptno = 20'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252033','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84527938882997563534
 ,p_command => 
'select * from emp'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252034','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84527940037300564575
 ,p_command => 
'delete from emp where deptno = 10'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252034','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84528067666800072662
 ,p_command => 
'select * from emp where deptno=20'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252034','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84528128011863077003
 ,p_command => 
'delete from emp where deptno = 30'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252034','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84528131210686077453
 ,p_command => 
'select * from emp'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252034','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84529888459431625468
 ,p_command => 
'insert into emp (EMPNO ,ENAME,JOB,MGR, HIREDATE,SAL,COMM,DEPTNO) values '||wwv_flow.LF||
'(1.''mohammad'',''qa mauale'',7839,''10/10/2003'',3500,null,20)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252044','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84529970137739638745
 ,p_command => 
'INSERT INTO emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) '||wwv_flow.LF||
'VALUES (1, ''mohammad'', ''qa manual'', 7839, ''2010-10-10'', 3500, NULL, 20);'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252047','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84529975605229640447
 ,p_command => 
'INSERT INTO emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) '||wwv_flow.LF||
'VALUES (1, ''mohammad'', ''qa manual'', 7839, 2010-10-10, 3500, NULL, 20);'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252047','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84530000429654131767
 ,p_command => 
'insert into emp (EMPNO ,ENAME,JOB,MGR, HIREDATE,SAL,COMM,DEPTNO) values '||wwv_flow.LF||
'(1.''mohammad'',''qa mauale'',7839,10/10/2003,3500,null,20)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84530900406849145048
 ,p_command => 
'INSERT INTO emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) '||wwv_flow.LF||
'VALUES (1, ''mohammad'', ''qa manual'', 7839, ''2003-10-10'', 3500, NULL, 20);'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252046','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84531725937277647597
 ,p_command => 
'INSERT INTO emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) '||wwv_flow.LF||
'VALUES (1, ''mohammad'', ''qa manual'', 7839, 2010/10/10, 3500, NULL, 20);'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252048','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84532223014799657451
 ,p_command => 
'INSERT INTO emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) '||wwv_flow.LF||
'VALUES (1, ''mohammad'', ''qa manual'', 7839, TO_DATE(''2010-10-10'', ''YYYY-MM-DD''), 3500, NULL, 20);'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252050','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84532260692992659842
 ,p_command => 
'select * from emp where deptno=20'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403252050','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84588719825077381672
 ,p_command => 
'create table students ('||wwv_flow.LF||
'    student_id(5) primary key,'||wwv_flow.LF||
'    student_name varchar2(10),'||wwv_flow.LF||
'    student_rate varchar2(10),'||wwv_flow.LF||
'    student_mobileNumber(10)'||wwv_flow.LF||
''||wwv_flow.LF||
')'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260012','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84588736701901385908
 ,p_command => 
'create table students ('||wwv_flow.LF||
'    student_id number (5) primary key,'||wwv_flow.LF||
'    student_name varchar2(10),'||wwv_flow.LF||
'    student_rate varchar2(10),'||wwv_flow.LF||
'    student_mobileNumber number(10)'||wwv_flow.LF||
''||wwv_flow.LF||
')'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260013','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84588741390093388490
 ,p_command => 
'select * from students'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260013','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84588875973074889454
 ,p_command => 
'insert into students (student_id,student_name,student_rate,student_mobileNumber)'||wwv_flow.LF||
'values(3215,''mohammad nabeel'',''veery good'',0791425288)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260015','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84588883595787892776
 ,p_command => 
'insert into students (student_id,student_name,student_rate,student_mobileNumber)'||wwv_flow.LF||
'values(3215,''mohammad'',''very good'',0791425288)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260016','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84588947223078905657
 ,p_command => 
'insert into students (student_id,student_name,student_rate,student_mobileNumber)'||wwv_flow.LF||
'values(1583,''younis'',''good'',079845611111)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260018','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589050626380404560
 ,p_command => 
'select * from students'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260016','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589063178516410973
 ,p_command => 
'insert into students (student_id,student_name,student_rate,student_mobileNumber)'||wwv_flow.LF||
'values(1533,''ahmad'',''good'',0796144646)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260017','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589063328989411351
 ,p_command => 
'select * from students'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260017','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589072232781414313
 ,p_command => 
'insert into students (student_id,student_name,student_rate,student_mobileNumber)'||wwv_flow.LF||
'values(1533,''ahmad'',''good'',0796144646)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260017','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589084373686418244
 ,p_command => 
''||wwv_flow.LF||
'insert into students (student_id,student_name,student_rate,student_mobileNumber)'||wwv_flow.LF||
'values(1583,''younis'',''good'',0798456111)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260018','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589084654542418642
 ,p_command => 
'select * from students'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260018','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589178474046431261
 ,p_command => 
'good'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260020','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589184262849435823
 ,p_command => 
'select * from students'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260021','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589213000513918552
 ,p_command => 
'update students set STUDENT_RATE = good where STUDENT_ID= 3215'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260020','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589234989028921857
 ,p_command => 
'update students set STUDENT_RATE = ''good'' where STUDENT_ID= 3215'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260020','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589237166610922676
 ,p_command => 
'select * from students'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260021','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589445023732924052
 ,p_command => 
'update students set STUDENT_RATE = ''bad'' where STUDENT_ID= 1533'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260021','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84589776682706931779
 ,p_command => 
'delete from students where STUDENT_ID =1583'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260022','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 84590109882103443718
 ,p_command => 
'select * from students'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403260022','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86916708360580872124
 ,p_command => 
'select * from EBA_COUNTRIES ;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311045','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86916856240381369604
 ,p_command => 
'select * from Countries;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86918450934114462608
 ,p_command => 
''||wwv_flow.LF||
'create table employees ('||wwv_flow.LF||
'    employees_ID number primary key ,'||wwv_flow.LF||
'    first_name varchar2(20),'||wwv_flow.LF||
'    last_name varchar2(20),'||wwv_flow.LF||
'    hire_date date ,'||wwv_flow.LF||
'    salary number(8 , 2)'||wwv_flow.LF||
''||wwv_flow.LF||
');'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311059','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86918480177740464805
 ,p_command => 
'select * from employyees'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311059','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86918482041563466081
 ,p_command => 
'select * from employees;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311059','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86919472050987484723
 ,p_command => 
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (111 , ''moh'',''nabeel'',to_date(''2021-01-08'', ''yyyy-mm-dd'') , 5000)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311102','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86919484776510486272
 ,p_command => 
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (111 , ''moh'',''nabeel'',to_date(''2021-01-08'', ''yyyy-mm-dd'') , 5000)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311103','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86919539995799495042
 ,p_command => 
'create table employees ('||wwv_flow.LF||
'    employees_ID number primary key ,'||wwv_flow.LF||
'    first_name varchar2(20),'||wwv_flow.LF||
'    last_name varchar2(20),'||wwv_flow.LF||
'    hire_date date ,'||wwv_flow.LF||
'    salary number(3 , 1)'||wwv_flow.LF||
''||wwv_flow.LF||
');'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311104','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86920201366155974012
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311102','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86920214130988982967
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311104','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86920240065134985014
 ,p_command => 
'update table employees ('||wwv_flow.LF||
'    employees_ID number primary key ,'||wwv_flow.LF||
'    first_name varchar2(20),'||wwv_flow.LF||
'    last_name varchar2(20),'||wwv_flow.LF||
'    hire_date date ,'||wwv_flow.LF||
'    salary number(3 , 1)'||wwv_flow.LF||
''||wwv_flow.LF||
');'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311104','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86920257507650991231
 ,p_command => 
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (111 , ''ahmad'',''raje'',to_date(''2022-11-01'', ''dd-mm-yyyy'') , 5000)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311105','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86920919577788497382
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311104','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86921550804349506148
 ,p_command => 
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (112 , ''ahmad'',''raje'',to_date(''2022-11-01'', ''dd-mm-yyyy'') , 5000)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311106','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86921558821923508626
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311106','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922061339948996690
 ,p_command => 
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (112 , ''ahmad'',''raje'',to_date(''2022-11-01'', ''yyyy-mm-dd'') , 5000)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311106','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922440564177525050
 ,p_command => 
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (113 , ''esaa'',''karm'',to_date(''2022-12-01'', ''yyyy-mm-dd'') , 5000)'||wwv_flow.LF||
'values (114 , ''vand'',''hok'',to_date(''2024-11-05'', ''yyyy-mm-dd'') , 5000)'||wwv_flow.LF||
'values (115 , ''yoj'',''rakon'',to_date(''2021-11-09'', ''yyyy-mm-dd'') , 5000)'||wwv_flow.LF||
'values (116 , ''ealmi'',''masry'',to_date(''2021-01-30'', ''yyyy-mm-dd'') , 5000)'||wwv_flow.LF||
'values (117 , ''sara'',''foda'',to_date'||
'(''2022-12-01'', ''yyyy-mm-dd'') , 5000)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311109','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922515099617535969
 ,p_command => 
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
''||wwv_flow.LF||
'values (114 , ''vand'',''hok'',to_date(''2024-11-05'', ''yyyy-mm-dd'') , 4500)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311111','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922630455853011629
 ,p_command => 
'values (113 , ''esaa'',''karm'',to_date(''2022-24-01'', ''yyyy-mm-dd'') , 5000)'||wwv_flow.LF||
'values (114 , ''vand'',''hok'',to_date(''2024-23-05'', ''yyyy-mm-dd'') , 5000)'||wwv_flow.LF||
'values (115 , ''yoj'',''rakon'',to_date(''2021-11-09'', ''yyyy-mm-dd'') , 5000)'||wwv_flow.LF||
'values (116 , ''ealmi'',''masry'',to_date(''2021-01-030'', ''yyyy-mm-dd'') , 5000)'||wwv_flow.LF||
'values (117 , ''sara'',''foda'',to_date(''2022-12-01'', ''yyyy-mm-dd'') , 5000)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311109','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922684515092019098
 ,p_command => 
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (113 , ''esaa'',''karm'',to_date(''2022-12-01'', ''yyyy-mm-dd'') , 6300)'||wwv_flow.LF||
'values (114 , ''vand'',''hok'',to_date(''2024-11-05'', ''yyyy-mm-dd'') , 4500)'||wwv_flow.LF||
'values (115 , ''yoj'',''rakon'',to_date(''2021-11-09'', ''yyyy-mm-dd'') , 3680)'||wwv_flow.LF||
'values (116 , ''ealmi'',''masry'',to_date(''2021-01-30'', ''yyyy-mm-dd'') , 7520)'||wwv_flow.LF||
'values (117 , ''sara'',''foda'',to_dat'||
'e(''2022-12-01'', ''yyyy-mm-dd'') , 1400)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311110','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922713799406023141
 ,p_command => 
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (113 , ''esaa'',''karm'',to_date(''2022-12-01'', ''yyyy-mm-dd'') , 6300)'||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
''||wwv_flow.LF||
'values (114 , ''vand'',''hok'',to_date(''2024-11-05'', ''yyyy-mm-dd'') , 4500)'||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
''||wwv_flow.LF||
'values (115 , ''yoj'',''rakon'''||
',to_date(''2021-11-09'', ''yyyy-mm-dd'') , 3680)'||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
''||wwv_flow.LF||
'values (116 , ''ealmi'',''masry'',to_date(''2021-01-30'', ''yyyy-mm-dd'') , 7520)'||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
''||wwv_flow.LF||
'values (117 , ''sara'',''foda'',to_date(''2022-12-01'', ''yyyy-mm-dd'') , 1400)'||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_na'||
'me,hire_date,salary)'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311111','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922715667385023972
 ,p_command => 
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (113 , ''esaa'',''karm'',to_date(''2022-12-01'', ''yyyy-mm-dd'') , 6300)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311111','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922718151594026098
 ,p_command => 
''||wwv_flow.LF||
'values (115 , ''yoj'',''rakon'',to_date(''2021-11-09'', ''yyyy-mm-dd'') , 3680)'||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311111','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922719003581026907
 ,p_command => 
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
''||wwv_flow.LF||
'values (115 , ''yoj'',''rakon'',to_date(''2021-11-09'', ''yyyy-mm-dd'') , 3680)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311111','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922719646441027435
 ,p_command => 
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
''||wwv_flow.LF||
'values (116 , ''ealmi'',''masry'',to_date(''2021-01-30'', ''yyyy-mm-dd'') , 7520)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311111','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922720566477028227
 ,p_command => 
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
''||wwv_flow.LF||
'values (117 , ''sara'',''foda'',to_date(''2022-12-01'', ''yyyy-mm-dd'') , 1400)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311111','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86922757734569040801
 ,p_command => 
'update employees'||wwv_flow.LF||
'set SALARY = 6500 where EMPLOYEES_ID=111'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311114','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923091616125543343
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311112','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923148051854552759
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311114','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923159763936559064
 ,p_command => 
'select * from EBA_COUNTRIES ;'||wwv_flow.LF||
'select * from employees;'||wwv_flow.LF||
'create table employees ('||wwv_flow.LF||
'    employees_ID number primary key ,'||wwv_flow.LF||
'    first_name varchar2(20),'||wwv_flow.LF||
'    last_name varchar2(20),'||wwv_flow.LF||
'    hire_date date ,'||wwv_flow.LF||
'    salary number(3 , 1)'||wwv_flow.LF||
''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (113 , ''esaa'',''karm'',to_date(''2022-12-01'', ''yyyy-mm-dd'') , 6300)'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into employees (em'||
'ployees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (114 , ''vand'',''hok'',to_date(''2024-11-05'', ''yyyy-mm-dd'') , 4500)'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (115 , ''yoj'',''rakon'',to_date(''2021-11-09'', ''yyyy-mm-dd'') , 3680)'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (116 , ''ealmi'',''masry'',to_date(''2021-01-30'', '||
'''yyyy-mm-dd'') , 7520)'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (117 , ''sara'',''foda'',to_date(''2022-12-01'', ''yyyy-mm-dd'') , 1400)'||wwv_flow.LF||
''||wwv_flow.LF||
'update employees'||wwv_flow.LF||
'set SALARY = 6500 where EMPLOYEES_ID=111'||wwv_flow.LF||
''||wwv_flow.LF||
'delete from employees where EMPLOYEES_ID = 116'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311115','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923243078158560572
 ,p_command => 
'delete from employees where EMPLOYEES_ID = 116;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311115','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923307150134583184
 ,p_command => 
'SELECT e.first_name, e.last_name, d.department_name'||wwv_flow.LF||
'FROM employees e'||wwv_flow.LF||
'JOIN departments d ON e.department_id = d.department_id;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311119','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923413678020049815
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311115','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923438062028056477
 ,p_command => 
'select FIRST_NAME ,SALARY from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311116','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923711549887111453
 ,p_command => 
'create table employees ('||wwv_flow.LF||
'    employees_ID number primary key ,'||wwv_flow.LF||
'    first_name varchar2(20),'||wwv_flow.LF||
'    last_name varchar2(20),'||wwv_flow.LF||
'    hire_date date ,'||wwv_flow.LF||
'    salary number(3 , 1),'||wwv_flow.LF||
'    department_id NUMBER'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
');'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311125','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923927557233624742
 ,p_command => 
'update table employees ('||wwv_flow.LF||
'    employees_ID number primary key ,'||wwv_flow.LF||
'    first_name varchar2(20),'||wwv_flow.LF||
'    last_name varchar2(20),'||wwv_flow.LF||
'    hire_date date ,'||wwv_flow.LF||
'    salary number(3 , 1),'||wwv_flow.LF||
'    department_id NUMBER'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
');'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311126','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923946970199628227
 ,p_command => 
'update table employee ('||wwv_flow.LF||
'    employees_ID number primary key ,'||wwv_flow.LF||
'    first_name varchar2(20),'||wwv_flow.LF||
'    last_name varchar2(20),'||wwv_flow.LF||
'    hire_date date ,'||wwv_flow.LF||
'    salary number(3 , 1),'||wwv_flow.LF||
'    department_id NUMBER'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
');'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311126','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923954732601631659
 ,p_command => 
'SELECT e.first_name, e.last_name, d.department_name'||wwv_flow.LF||
'FROM employees e'||wwv_flow.LF||
'JOIN departments d ON e.department_id = d.department_id;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311127','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86923977708036638476
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311128','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86924442404346655411
 ,p_command => 
''||wwv_flow.LF||
'ALTER TABLE employees'||wwv_flow.LF||
'ADD (department_id NUMBER)'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311131','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86924443786016656127
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311131','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86924469670067664213
 ,p_command => 
'SELECT moh.first_name, nabeel.last_name, accounte.DEPARTMENT_ID'||wwv_flow.LF||
'FROM employees'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311132','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86924470629634664688
 ,p_command => 
'SELECT moh.first_name, nabeel.last_name, accounte.DEPARTMENT_ID'||wwv_flow.LF||
'FROM employees'||wwv_flow.LF||
'JOIN departments d ON e.department_id = d.department_id;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311132','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86924497086549676467
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311134','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86924502759811680546
 ,p_command => 
'select AVG(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311135','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86924506386726683673
 ,p_command => 
'select min(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311135','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86925155989208171489
 ,p_command => 
'select max(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311135','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86925176115381173976
 ,p_command => 
'select avg(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'||wwv_flow.LF||
''||wwv_flow.LF||
'select max(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'||wwv_flow.LF||
''||wwv_flow.LF||
'select min(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311136','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86925179308005174446
 ,p_command => 
'select max(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'||wwv_flow.LF||
''||wwv_flow.LF||
'select min(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311136','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86925180866484174968
 ,p_command => 
'select max(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311136','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86925189569645178491
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311136','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86928118916824351463
 ,p_command => 
'insert into employees (DEPARTMENT_ID) where EMPLOYEES_ID = 111;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311205','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86928129026815354548
 ,p_command => 
''||wwv_flow.LF||
'insert into employees (DEPARTMENT_ID) where EMPLOYEES_ID = 111'||wwv_flow.LF||
'values(''accountent'')'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311206','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86928440303026870869
 ,p_command => 
'insert into employees (DEPARTMENT_ID)'||wwv_flow.LF||
'where employees_ID = 111'||wwv_flow.LF||
'VALUES(''accountent'')'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311207','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86928541957925888634
 ,p_command => 
'UPDATE employees'||wwv_flow.LF||
'SET DEPARTMENT_ID = ''accountent'''||wwv_flow.LF||
'WHERE employees_ID = 111;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311210','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86928591703621893967
 ,p_command => 
'UPDATE employees'||wwv_flow.LF||
'SET DEPARTMENT_ID = 331'||wwv_flow.LF||
'WHERE employees_ID = 111;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311211','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86928599149396895659
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311211','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929122971334362558
 ,p_command => 
'insert into employees (DEPARTMENT_ID)'||wwv_flow.LF||
'where employees_ID = 111 ;'||wwv_flow.LF||
'values (''accountent'')'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311207','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929152453788369752
 ,p_command => 
'insert into employees (DEPARTMENT_ID)'||wwv_flow.LF||
'values (''accountent'')'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311208','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929167168943371964
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311209','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929171586755374565
 ,p_command => 
'insert into employees (DEPARTMENT_ID)'||wwv_flow.LF||
'values (''accountent'')'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311209','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929546166779386679
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311211','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929602487613897439
 ,p_command => 
'UPDATE employees'||wwv_flow.LF||
'SET DEPARTMENT_ID = 321'||wwv_flow.LF||
'WHERE employees_ID = 112;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311211','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929641770003906246
 ,p_command => 
'UPDATE employees'||wwv_flow.LF||
'SET DEPARTMENT_ID = 321'||wwv_flow.LF||
'WHERE employees_ID = 114;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311213','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929642651343907423
 ,p_command => 
'UPDATE employees'||wwv_flow.LF||
'SET DEPARTMENT_ID = 321'||wwv_flow.LF||
'WHERE employees_ID = 115;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311213','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929644000033908621
 ,p_command => 
'UPDATE employees'||wwv_flow.LF||
'SET DEPARTMENT_ID = 331'||wwv_flow.LF||
'WHERE employees_ID = 116;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311213','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929644697967909666
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311213','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929654900596911283
 ,p_command => 
'UPDATE employees'||wwv_flow.LF||
'SET DEPARTMENT_ID = 331'||wwv_flow.LF||
'WHERE employees_ID = 117;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311213','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929656980142911940
 ,p_command => 
'UPDATE employees'||wwv_flow.LF||
'SET DEPARTMENT_ID = 331'||wwv_flow.LF||
'WHERE employees_ID = 113;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311214','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929664240658912606
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311214','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929701665089923421
 ,p_command => 
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311215','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86929771891694935001
 ,p_command => 
'select DEPARTMENT_ID , LAST_NAME '||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311217','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86930175443024417586
 ,p_command => 
'select * from employees;'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311216','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86930179899225422367
 ,p_command => 
'select DEPARTMENT_ID , LAST_NAME as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311217','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86930185561855424784
 ,p_command => 
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311218','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86930192825246426955
 ,p_command => 
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'-- group by DEPARTMENT_ID'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311218','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86930193308190427550
 ,p_command => 
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311218','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86930194341080428787
 ,p_command => 
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311218','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86931753865481003916
 ,p_command => 
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
'having sum(SALARY) =('||wwv_flow.LF||
'    select max(total_salary)'||wwv_flow.LF||
'    from('||wwv_flow.LF||
'        select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
'    )'||wwv_flow.LF||
');'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311229','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932306915442500669
 ,p_command => 
''||wwv_flow.LF||
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_I'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311230','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932307661676501287
 ,p_command => 
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_Id'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311230','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932321699346504243
 ,p_command => 
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by first_name'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311231','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932332281059509268
 ,p_command => 
'select * from EBA_COUNTRIES ;'||wwv_flow.LF||
'select * from employees;'||wwv_flow.LF||
'update table employees ('||wwv_flow.LF||
'    employees_ID number primary key ,'||wwv_flow.LF||
'    first_name varchar2(20),'||wwv_flow.LF||
'    last_name varchar2(20),'||wwv_flow.LF||
'    hire_date date ,'||wwv_flow.LF||
'    salary number(3 , 1)'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'ALTER TABLE employees'||wwv_flow.LF||
'ADD (department_id NUMBER)'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (113 , ''esaa'',''karm'',to_date(''2022-12-01'','||
' ''yyyy-mm-dd'') , 6300)'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (114 , ''vand'',''hok'',to_date(''2024-11-05'', ''yyyy-mm-dd'') , 4500)'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (115 , ''yoj'',''rakon'',to_date(''2021-11-09'', ''yyyy-mm-dd'') , 3680)'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'val'||
'ues (116 , ''ealmi'',''masry'',to_date(''2021-01-30'', ''yyyy-mm-dd'') , 7520)'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into employees (employees_ID ,first_name,last_name,hire_date,salary)'||wwv_flow.LF||
'values (117 , ''sara'',''foda'',to_date(''2022-12-01'', ''yyyy-mm-dd'') , 1400)'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'UPDATE employees'||wwv_flow.LF||
'SET DEPARTMENT_ID = 331'||wwv_flow.LF||
'WHERE employees_ID = 113;'||wwv_flow.LF||
''||wwv_flow.LF||
'select * from employees;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'update employees'||wwv_flow.LF||
'set SALARY = 6500 where EMPLOYEES_ID=111;'||wwv_flow.LF||
''||wwv_flow.LF||
'delete from employees '||
''||wwv_flow.LF||
'where EMPLOYEES_ID = 116;'||wwv_flow.LF||
''||wwv_flow.LF||
'select FIRST_NAME ,SALARY from employees;'||wwv_flow.LF||
''||wwv_flow.LF||
'select * from employees;'||wwv_flow.LF||
''||wwv_flow.LF||
'select avg(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'||wwv_flow.LF||
''||wwv_flow.LF||
'select max(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'||wwv_flow.LF||
''||wwv_flow.LF||
'select min(SALARY) as average_salary'||wwv_flow.LF||
'from employees;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
''||wwv_flow.LF||
'-- to make it a subqueries using a subquery'||wwv_flow.LF||
''||wwv_flow.LF||
'select'||
' hire_date ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by hire_date'||wwv_flow.LF||
'having sum(SALARY) =('||wwv_flow.LF||
'    select max(total_salary)'||wwv_flow.LF||
'    from('||wwv_flow.LF||
'        select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
'    )'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311232','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932340764137510823
 ,p_command => 
''||wwv_flow.LF||
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311232','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932344176193515011
 ,p_command => 
''||wwv_flow.LF||
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
'having sum(SALARY) =('||wwv_flow.LF||
'    select max(total_salary)'||wwv_flow.LF||
'    from('||wwv_flow.LF||
'        select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
'    )'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311233','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932419205090018365
 ,p_command => 
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by hire_date'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311231','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932466082150022784
 ,p_command => 
''||wwv_flow.LF||
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
'having sum(SALARY) =('||wwv_flow.LF||
'    select max(total_salary)'||wwv_flow.LF||
'    from('||wwv_flow.LF||
'        select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
'    )'||wwv_flow.LF||
');'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311232','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932469395439023911
 ,p_command => 
''||wwv_flow.LF||
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
'having sum(SALARY) =('||wwv_flow.LF||
'    select min(total_salary)'||wwv_flow.LF||
'    from('||wwv_flow.LF||
'        select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
'    )'||wwv_flow.LF||
');'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311232','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932472016066025257
 ,p_command => 
'select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
'having sum(SALARY) =('||wwv_flow.LF||
'    select avg(total_salary)'||wwv_flow.LF||
'    from('||wwv_flow.LF||
'        select DEPARTMENT_ID ,sum(SALARY) as total_salary'||wwv_flow.LF||
'from employees'||wwv_flow.LF||
'group by DEPARTMENT_ID'||wwv_flow.LF||
'    )'||wwv_flow.LF||
');'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311232','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932733102643063527
 ,p_command => 
'select * from  department_summary'||wwv_flow.LF||
''
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311239','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 86932841840660549693
 ,p_command => 
'CREATE VIEW department_summary AS'||wwv_flow.LF||
'SELECT DEPARTMENT_ID, COUNT(*) AS num_employees, SUM(SALARY) AS total_salary'||wwv_flow.LF||
'FROM employees'||wwv_flow.LF||
'GROUP BY DEPARTMENT_ID;'
    ,p_created_by => 'MOHAMAD.NABEEL@OUTLOOK.COM'
    ,p_created_on => to_date('202403311238','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_MOHNABEELDATABASETEST');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MOHAMAD.NABEEL@OUTLOOK.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202403311029','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'MOHAMAD.NABEEL@OUTLOOK.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202403242240','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'MOHAMAD.NABEEL@OUTLOOK.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202403251937','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'MOHAMAD.NABEEL@OUTLOOK.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202403260006','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ... Extension Links
 
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_MOHNABEELDATABASETEST';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_MOHNABEELDATABASETEST - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_230200
-- Exported 13:21 Sunday March 31, 2024 by: MOHAMAD.NABEEL@OUTLOOK.COM
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 13:21 Sunday March 31, 2024 by: MOHAMAD.NABEEL@OUTLOOK.COM
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'MOHNABEEL_DATABASE_TEST';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
