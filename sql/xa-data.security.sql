--
-- Dumping data for table sec_role
--

INSERT INTO security.sec_role (role_uuid, role_name, description, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('06be80df-5c41-42a7-9050-b328312d2f3a', 'ROLE_ADMIN', 'Role Administrator', 0, true, '2018-12-02 20:52:28', NULL, NULL, NULL),
('2d20c3fc-be09-4495-9d9b-137decdf0ce4', 'ROLE_ADMIN_HOSPITAL', 'Role Administrator Hospital', 0, true, '2018-12-02 20:52:28', NULL, NULL, NULL),
('1af2403b-a4f8-4492-94c1-5d6ab8b4a094', 'ROLE_RADIOGRAPHER', 'Role Doctor Radiographer', 0, true, '2018-12-03 11:57:36', NULL, NULL, NULL),
('d46b4b13-4159-4f5c-923d-5d8dfe3f48de', 'ROLE_PHYSICIAN', 'Role Doctor Clinic', 0, true, '2018-12-03 11:57:36', NULL, NULL, NULL),
('d4fd659f-7bd6-4b1c-9127-e2dcf04651b0', 'ROLE_PHARMACEUTICALS', 'Role Pharmaceuticals', 0, true, '2018-12-10 09:11:00', NULL, NULL, NULL),
('d68a2ea7-f1cb-484c-a3d4-b669ef3ff3c8', 'ROLE_END', 'Role Patient', 0, true, '2018-12-03 11:57:36', NULL, NULL, NULL);

--
-- Dumping data for table sec_user
--

INSERT INTO security.sec_user (user_uuid, username, password, account_enabled, account_non_expired, account_non_locked, credentials_non_expired, email, verification_code, raw, authority_default, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('181545af-9410-47ca-8de2-4fd29d9da5d9', 'doctor', '$2y$13$gMg7ds4WMSQjfLYXPxNZYekZ.DHMvE9DOuIs.D5XaCZalhG0nv5bq', true, true, true, true, 'rap.doctor@mailinator.com', NULL, NULL, 'ROLE_PHYSICIAN', 0, true, '2018-12-05 14:50:55', NULL, NULL, NULL),
('1ac29215-75e8-4e19-b4f1-e076da7ca1ab', 'admin', '$2y$13$gMg7ds4WMSQjfLYXPxNZYekZ.DHMvE9DOuIs.D5XaCZalhG0nv5bq', true, true, true, true, 'rap.admin@mailinator.com', NULL, NULL, 'ROLE_ADMIN', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('38527ac6-edb6-4a4f-8e60-eede49c4c2a6', 'radiographer', '$2y$13$gMg7ds4WMSQjfLYXPxNZYekZ.DHMvE9DOuIs.D5XaCZalhG0nv5bq', true, true, true, true, 'rap.radiographer@mailinator.com', NULL, NULL, 'ROLE_RADIOGRAPHER', 0, true, '2018-12-05 14:50:55', NULL, NULL, NULL),
('59e3c4cc-7928-4d0e-8d1a-cdeae3eba796', 'pharmacy', '$2y$13$gMg7ds4WMSQjfLYXPxNZYekZ.DHMvE9DOuIs.D5XaCZalhG0nv5bq', true, true, true, true, 'rap.pharmacy@mailinator.com', NULL, NULL, 'ROLE_PHARMACEUTICALS', 0, true, '2018-12-05 14:50:55', NULL, NULL, NULL),
('adfdd958-b9fe-4ebe-bf1e-1a19c0637071', '1272070411890002', '$2y$13$gMg7ds4WMSQjfLYXPxNZYekZ.DHMvE9DOuIs.D5XaCZalhG0nv5bq', true, true, true, true, 'rap.patient01@mailinator.com', NULL, NULL, 'ROLE_END', 0, true, '2018-12-03 13:05:57', NULL, NULL, NULL);

--
-- Dumping data for table oauth_client_details
-- xa-3rd = secretxa3rd01
-- xa-core = secretxa01
-- xa-mobile = secretxa02
-- xa-private = secretprivatexa01
--

INSERT INTO security.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES
('xa-3rd', 'profile,master', '$2a$13$kh2pUDx33Pj00n63/S0HLOORCRw9/zhxEqdYjnsSRzJIwdRf9FRwe', 'read,write,check_token', 'authorization_code,refresh_token', 'http://xaphira.github.io:69/oauth/secure', 'ROLE_END', 3600, 1800, NULL, '0'),
('xa-core', 'profile,security,master,notification,general,file,report,radiology', '$2a$13$NrN1v1S4p0UsM8zDdvcUUeHqeUwmGbrobBaUwCO.eiIDVsIbIX5gy', 'read,write,trust,check_token', 'password,refresh_token', '', 'ROLE_ADMIN,ROLE_RADIOGRAPHER,ROLE_PHYSICIAN,ROLE_END', 7200, 3600, NULL, '1'),
('xa-mobile', 'profile,security,master', '$2a$13$jqHw2BuGwJsZXf.eF3XVlOgGxkquOGx4vRDL6ll8UUyr0wEj03YLO', 'read,write,check_token', 'password,refresh_token', '', 'ROLE_END', 7200, 3600, NULL, '1'),
('xa-private', 'profile,security,master,notification,general,file,report', '$2a$13$5wGOOgm9sN52flJGIdnn3urz9h4xubtDLJnaNmhmRTvqJUiuTJLny', 'read,write,trust,check_token', 'client_credentials', '', 'ROLE_PRIVATE', 30, 15, NULL, '1');

--
-- Dumping data for table sec_corporate
--

INSERT INTO security.sec_corporate(corporate_uuid, corporate_id, corporate_name, corporate_non_expired, email, address, telp_number) VALUES
('0ae4b095-d957-4ff1-a34d-7a440cc8d8ca', 'RAP', 'Rapid Access Procedure Healthcare', true, 'rap.healthcare.id@gmail.com', 'Tangerang', '+6281221356663'),
('ae7efdc0-0302-4bc3-ab81-1f90b04d7393', 'EKA', 'Eka Hospital', true, 'eka.hospital@mailinator.com', 'Tangerang', '+23456789'),
('f01f84e6-2804-4d68-84ee-b52afdd842ee', 'SLM', 'Siloam Hospital', true, 'siloam.hospital@mailinator.com', 'Tangerang', '+23456789');

--
-- Dumping data for table sec_menu
--

INSERT INTO security.sec_menu (menu_uuid, code, title, url, "level", ordering, ordering_str, icon, is_leaf, is_home, is_group, "version", is_active, created_date, created_by, modified_date, modified_by, parent_uuid) VALUES
('b9029fd3-44cd-479c-965d-a8da1bfb20eb', NULL, 'Dashboard', '#', 0, 0, '000', 'nb-home', false, true, true, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('744e72e8-b3ac-44e7-8591-9be8ac2ff1f0', '#DISEASE-CLUSTER-PAGE', 'Disease Clusterization ', '/app/dashboard/disease-clusterization', 1, 0, '000.000', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, 'b9029fd3-44cd-479c-965d-a8da1bfb20eb'),
('5e4c4f02-5f06-41df-81a1-4324ca39e4f3', '#DRUG-FORECAST-PAGE', 'Drug Forecast', '/app/dashboard/drug-forecast', 1, 1, '000.001', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, 'b9029fd3-44cd-479c-965d-a8da1bfb20eb'),
('11f41409-cf87-42c4-adfd-f3b72ed91f39', '#CONTROL-EPIDEMIC-PAGE', 'Control Epidemic', '/app/dashboard/control-epidemic', 1, 2, '000.002', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, 'b9029fd3-44cd-479c-965d-a8da1bfb20eb'),
('691edd45-2c12-4bcf-aac4-4c791b387b55', '#REPORT-MEDICAL-RECORD-PAGE', 'Medical Record', '/app/report/medical-record', 0, 1, '001', NULL, false, false, true, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('4e9eef44-0b36-4d57-9192-4fd12634205e', '#PREVIEW-RADIOLOGY-PAGE', 'Radiology', '/app/radiology/preview', 0, 2, '002', NULL, false, false, true, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL);

INSERT INTO security.sec_menu (menu_uuid, code, title, url, "level", ordering, ordering_str, icon, is_leaf, is_home, is_group, "version", is_active, created_date, created_by, modified_date, modified_by, parent_uuid) VALUES
('77687148-0cda-4a4a-96f1-900cd986c326', NULL, 'System Configuration', '#', 0, 3, '003', NULL, false, false, true, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('5f4872f1-627e-4789-adf7-dc6db3884267', NULL, 'Management User', '#', 0, 4, '004', 'nb-keypad', false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('079f7d96-8ef9-40d5-ab1a-0f6641e3e8cf', '#SYS-MENU-PAGE', 'Data Menu', '/app/sys/menu', 1, 0, '003.000', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '77687148-0cda-4a4a-96f1-900cd986c326'),
('b03f9702-44a4-44b1-86f2-7f03d070b35b', '#SYS-ROLE-PAGE', 'Data Role', '/app/sys/role', 1, 1, '003.001', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '77687148-0cda-4a4a-96f1-900cd986c326'),
('688a7f38-30de-439b-9614-e35f635d7f3c', '#SYS-ROLE-MENU-PAGE', 'Role of Menu', '/app/sys/role-menu', 1, 2, '003.002', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '77687148-0cda-4a4a-96f1-900cd986c326'),
('c38b980a-21be-41b9-bdbf-0d1c0e690ca3', '#SYS-LANGUAGE-PAGE', 'Language', '/app/sys/language', 1, 3, '003.003', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '77687148-0cda-4a4a-96f1-900cd986c326'),
('551189d2-af7d-4399-9f4d-fa4881ac0902', '#SYS-PARAMETER-PAGE', 'Parameter', '/app/sys/parameter', 1, 4, '003.004', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '77687148-0cda-4a4a-96f1-900cd986c326'),
('0019a3e6-86ed-46d4-b6b2-e9525385c65f', '#MGMT-USER-PAGE', 'Data User', '/app/mgmt/data-user', 1, 0, '004.000', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '5f4872f1-627e-4789-adf7-dc6db3884267'),
('63684913-2134-4323-b237-d3a6775ed241', '#MGMT-HISTORY-USER-PAGE', 'History User', '/app/mgmt/history-user', 1, 1, '004.001', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '5f4872f1-627e-4789-adf7-dc6db3884267');
--- Extra Menu
INSERT INTO security.sec_menu (menu_uuid, code, title, url, "level", ordering, ordering_str, "type", icon, is_leaf, is_home, is_group, "version", is_active, created_date, created_by, modified_date, modified_by, parent_uuid) VALUES
('59e7e128-fe95-48d4-97a9-5441ae3d320c', '#PROFILE-PAGE', 'Profile', '/app/user/profile', 0, 0, '100', 'extra', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('65691d1c-8f9d-4f4f-9223-c48f8c4dcee4', '#SECURITY-PAGE', 'Security', '/app/user/security', 0, 1, '101', 'extra', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('1de67261-d2f9-4a01-bba2-68db9b3ad8c3', '#SETTINGS-PAGE', 'Settings', '/app/user/settings', 0, 2, '102', 'extra', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL);

--
-- Dumping data for table sec_menu_i18n
--

INSERT INTO security.sec_menu_i18n (menu_i18n_uuid, menu_uuid, locale_code, title, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('8edd8eaa-c665-4d81-ab41-49a61df686ba', 'b9029fd3-44cd-479c-965d-a8da1bfb20eb', 'id-ID', 'Dashboard', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('2462f5fe-be57-4d6b-a937-048b914b280b', '744e72e8-b3ac-44e7-8591-9be8ac2ff1f0', 'id-ID', 'Klasterisasi Penyakit', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('535d3508-e229-48db-b43a-433800f45131', '5e4c4f02-5f06-41df-81a1-4324ca39e4f3', 'id-ID', 'Analisa Farmasi', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('59087a35-d49b-40f0-a9aa-096e0c131b99', '11f41409-cf87-42c4-adfd-f3b72ed91f39', 'id-ID', 'Penanganan Wabah', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('038c6e26-5a56-4344-855d-518bef99584a', '691edd45-2c12-4bcf-aac4-4c791b387b55', 'id-ID', 'Riwayat Kesehatan', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('f6254df8-62ce-4ae0-860c-8cb6e37827f9', '4e9eef44-0b36-4d57-9192-4fd12634205e', 'id-ID', 'Radiologi', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL);

INSERT INTO security.sec_menu_i18n (menu_i18n_uuid, menu_uuid, locale_code, title, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('e0498589-37f3-4bd2-8116-9f2713abe051', '77687148-0cda-4a4a-96f1-900cd986c326', 'id-ID', 'Konfigurasi Sistem', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('f143dd3b-ec59-401f-9796-c7c9d253db04', '5f4872f1-627e-4789-adf7-dc6db3884267', 'id-ID', 'Manajemen User', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('a817dc35-1d8d-4d60-b52a-d823bd5f6b5b', '079f7d96-8ef9-40d5-ab1a-0f6641e3e8cf', 'id-ID', 'Data Menu', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('77bf369b-fcf1-4eff-9241-d82e0dfc96a7', 'b03f9702-44a4-44b1-86f2-7f03d070b35b', 'id-ID', 'Data Role', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('fbd3e5f3-de06-46d8-80ae-5f2fb5a3cc8b', '688a7f38-30de-439b-9614-e35f635d7f3c', 'id-ID', 'Role Menu', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('c42b1488-d829-4775-a700-1bd87657eae1', 'c38b980a-21be-41b9-bdbf-0d1c0e690ca3', 'id-ID', 'Bahasa', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('3eec654f-6ad3-41c1-b84c-f86f86bf4adf', '551189d2-af7d-4399-9f4d-fa4881ac0902', 'id-ID', 'Parameter', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('f64f819e-8ccd-4c13-bae5-4ec2bd641922', '0019a3e6-86ed-46d4-b6b2-e9525385c65f', 'id-ID', 'Data User', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('1a2a530e-5fa7-4d16-8c30-4fccdada8dbe', '63684913-2134-4323-b237-d3a6775ed241', 'id-ID', 'Riwayat User', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL);
--- Extra Menu
INSERT INTO security.sec_menu_i18n (menu_i18n_uuid, menu_uuid, locale_code, title, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('1d78db6e-7352-4957-a13f-0f94e354a884', '59e7e128-fe95-48d4-97a9-5441ae3d320c', 'id-ID', 'Profil', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('6b0691fd-b496-4629-9987-c3c3afca53ec', '65691d1c-8f9d-4f4f-9223-c48f8c4dcee4', 'id-ID', 'Keamanan', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('838cca1c-9873-4882-bebd-57e1d4dccaf2', '1de67261-d2f9-4a01-bba2-68db9b3ad8c3', 'id-ID', 'Pengaturan', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL);

--
-- Dumping data for table sec_function
--

INSERT INTO security.sec_function(function_uuid, menu_uuid, role_uuid, access, version, is_active, created_date, created_by, modified_date, modified_by) VALUES
('1f687a5e-e61c-4ce2-81fc-94ad9c1dbe8b', 'b9029fd3-44cd-479c-965d-a8da1bfb20eb', '1af2403b-a4f8-4492-94c1-5d6ab8b4a094', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('a7b6713a-ef5f-4a93-a111-a4769197ab83', 'b9029fd3-44cd-479c-965d-a8da1bfb20eb', 'd46b4b13-4159-4f5c-923d-5d8dfe3f48de', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('58a476f7-7986-4123-934e-9dae15e565eb', 'b9029fd3-44cd-479c-965d-a8da1bfb20eb', 'd4fd659f-7bd6-4b1c-9127-e2dcf04651b0', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('22c3a77b-8f2d-4f04-a925-825a1e223a9e', 'b9029fd3-44cd-479c-965d-a8da1bfb20eb', 'd68a2ea7-f1cb-484c-a3d4-b669ef3ff3c8', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('e4870251-ee37-4685-a432-c5e863cbec61', '77687148-0cda-4a4a-96f1-900cd986c326', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('628447be-d7fc-4d0b-bf42-7aa8febaf791', '5f4872f1-627e-4789-adf7-dc6db3884267', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('1646f5de-f72a-4c1a-8250-6152fdc2b5d5', '079f7d96-8ef9-40d5-ab1a-0f6641e3e8cf', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('d6da29e7-d474-4e3a-bd1b-d4c167262b38', 'b03f9702-44a4-44b1-86f2-7f03d070b35b', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('8bd761f9-b32e-4cd5-915f-564eaeadd5f0', '688a7f38-30de-439b-9614-e35f635d7f3c', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('c67729c3-a3e5-43b6-af95-7b44448580f2', 'c38b980a-21be-41b9-bdbf-0d1c0e690ca3', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('0a5d9c6b-0c8b-4591-8278-2c8dbe0caf36', '551189d2-af7d-4399-9f4d-fa4881ac0902', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('d18987a7-2141-4fbf-aa8a-fdd1ba3f545c', '0019a3e6-86ed-46d4-b6b2-e9525385c65f', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('83345e74-ef04-43ee-986a-353144485fd3', '63684913-2134-4323-b237-d3a6775ed241', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null);
--- Extra Menu
INSERT INTO security.sec_function(function_uuid, menu_uuid, role_uuid, access, version, is_active, created_date, created_by, modified_date, modified_by) VALUES
('e20c9233-d18b-46ee-b63f-238cf2d17af9', '59e7e128-fe95-48d4-97a9-5441ae3d320c', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:06:50.069434', 'admin', null, null),
('49185ac8-d2de-41db-aa3d-12998626d46e', '59e7e128-fe95-48d4-97a9-5441ae3d320c', '1af2403b-a4f8-4492-94c1-5d6ab8b4a094', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('7100f1fc-1da1-42af-88b9-3ff48d93c2ca', '59e7e128-fe95-48d4-97a9-5441ae3d320c', 'd46b4b13-4159-4f5c-923d-5d8dfe3f48de', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('0b536407-3aa9-4f67-a15a-b89059e77097', '59e7e128-fe95-48d4-97a9-5441ae3d320c', 'd4fd659f-7bd6-4b1c-9127-e2dcf04651b0', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('b7fbff6b-25ef-45f5-b9e6-f5be0892143b', '59e7e128-fe95-48d4-97a9-5441ae3d320c', 'd68a2ea7-f1cb-484c-a3d4-b669ef3ff3c8', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('e0a73e98-5f03-4ec2-a61d-0d4314732ab7', '65691d1c-8f9d-4f4f-9223-c48f8c4dcee4', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:06:50.069434', 'admin', null, null),
('a8623e4b-608d-4ec1-8903-2f3771e084af', '65691d1c-8f9d-4f4f-9223-c48f8c4dcee4', '1af2403b-a4f8-4492-94c1-5d6ab8b4a094', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('473e6667-ef33-4f12-bb75-474d39640bfb', '65691d1c-8f9d-4f4f-9223-c48f8c4dcee4', 'd46b4b13-4159-4f5c-923d-5d8dfe3f48de', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('06b10460-8f80-4e10-80ca-ae31f26286c4', '65691d1c-8f9d-4f4f-9223-c48f8c4dcee4', 'd4fd659f-7bd6-4b1c-9127-e2dcf04651b0', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('92a694df-f837-486d-a5e7-06e446b0b533', '65691d1c-8f9d-4f4f-9223-c48f8c4dcee4', 'd68a2ea7-f1cb-484c-a3d4-b669ef3ff3c8', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('f05cb004-d570-4c95-a186-be95f6ae656d', '1de67261-d2f9-4a01-bba2-68db9b3ad8c3', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:06:50.069434', 'admin', null, null),
('6a4c10df-4327-4394-a98d-5ef26dab66af', '1de67261-d2f9-4a01-bba2-68db9b3ad8c3', '1af2403b-a4f8-4492-94c1-5d6ab8b4a094', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('b6f95341-39b6-45fb-8713-5b7af453b3ff', '1de67261-d2f9-4a01-bba2-68db9b3ad8c3', 'd46b4b13-4159-4f5c-923d-5d8dfe3f48de', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('7656b95e-67d5-4cd9-9f85-1a7d09f36b03', '1de67261-d2f9-4a01-bba2-68db9b3ad8c3', 'd4fd659f-7bd6-4b1c-9127-e2dcf04651b0', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('47b9dd0a-12c3-4eca-97f0-05073119bb21', '1de67261-d2f9-4a01-bba2-68db9b3ad8c3', 'd68a2ea7-f1cb-484c-a3d4-b669ef3ff3c8', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null);

--
-- Dumping data for table sec_r_user_corporate
--

INSERT INTO security.sec_r_user_corporate (user_uuid, corporate_uuid) VALUES
('1ac29215-75e8-4e19-b4f1-e076da7ca1ab', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('adfdd958-b9fe-4ebe-bf1e-1a19c0637071', 'ae7efdc0-0302-4bc3-ab81-1f90b04d7393'),
('181545af-9410-47ca-8de2-4fd29d9da5d9', 'ae7efdc0-0302-4bc3-ab81-1f90b04d7393'),
('38527ac6-edb6-4a4f-8e60-eede49c4c2a6', 'ae7efdc0-0302-4bc3-ab81-1f90b04d7393');

--
-- Dumping data for table sec_r_user_role
--

INSERT INTO security.sec_r_user_role (user_uuid, role_uuid) VALUES
('1ac29215-75e8-4e19-b4f1-e076da7ca1ab', '06be80df-5c41-42a7-9050-b328312d2f3a'),
('adfdd958-b9fe-4ebe-bf1e-1a19c0637071', 'd68a2ea7-f1cb-484c-a3d4-b669ef3ff3c8'),
('181545af-9410-47ca-8de2-4fd29d9da5d9', 'd46b4b13-4159-4f5c-923d-5d8dfe3f48de'),
('38527ac6-edb6-4a4f-8e60-eede49c4c2a6', '1af2403b-a4f8-4492-94c1-5d6ab8b4a094');

--
-- Dumping data for table sec_settings
--
	
INSERT INTO security.sec_settings (settings_uuid, user_uuid) VALUES 
('adfdd958-b9fe-4ebe-bf1e-1a19c0637071', 'adfdd958-b9fe-4ebe-bf1e-1a19c0637071'),
('181545af-9410-47ca-8de2-4fd29d9da5d9', '181545af-9410-47ca-8de2-4fd29d9da5d9'),
('38527ac6-edb6-4a4f-8e60-eede49c4c2a6', '38527ac6-edb6-4a4f-8e60-eede49c4c2a6'),
('1ac29215-75e8-4e19-b4f1-e076da7ca1ab', '1ac29215-75e8-4e19-b4f1-e076da7ca1ab');

--
-- Dumping data for table sec_profile
--
	
INSERT INTO security.sec_profile (profile_uuid, user_uuid, fullname) VALUES 
('d4fd659f-7bd6-4b1c-9127-e2dcf04651b0', 'adfdd958-b9fe-4ebe-bf1e-1a19c0637071', 'Patient 01'),
('d46b4b13-4159-4f5c-923d-5d8dfe3f48de', '38527ac6-edb6-4a4f-8e60-eede49c4c2a6', 'Radiographer 01'),
('1af2403b-a4f8-4492-94c1-5d6ab8b4a094', '1ac29215-75e8-4e19-b4f1-e076da7ca1ab', 'Administrator'),
('06be80df-5c41-42a7-9050-b328312d2f3a', '181545af-9410-47ca-8de2-4fd29d9da5d9', 'Doctor 01');