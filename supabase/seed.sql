SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'faa2299a-53ff-43d5-b7e0-aabb29d076a5', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@test.com","user_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","user_phone":""}}', '2025-03-24 08:42:09.245265+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f7cd944f-1ea0-4603-a676-5fdbbdd20e66', '{"action":"login","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-24 10:13:05.190211+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3c62b3b-aa15-47b0-877d-9813007963e6', '{"action":"logout","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2025-03-24 10:18:17.41145+00', ''),
	('00000000-0000-0000-0000-000000000000', '782162a4-37d9-41e2-b6c5-512e00359aa9', '{"action":"login","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-24 10:18:34.013662+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b3e16aac-48c8-430c-a376-3e889582c48a', '{"action":"logout","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2025-03-24 10:18:47.920941+00', ''),
	('00000000-0000-0000-0000-000000000000', '1213573e-a069-4687-baf8-84035af7d1cc', '{"action":"login","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-24 10:31:51.892014+00', ''),
	('00000000-0000-0000-0000-000000000000', '71132e36-ad03-4b43-aed4-0e11ec13337d', '{"action":"logout","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2025-03-24 10:32:00.70644+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ff3783c-8d5e-4331-bbff-813587603106', '{"action":"login","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-24 10:34:52.603784+00', ''),
	('00000000-0000-0000-0000-000000000000', '45d35c69-806f-404d-a25e-178fafd316f3', '{"action":"logout","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2025-03-24 11:20:22.21378+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c656d4e5-9772-41ef-ae9e-3c65ec862f7f', '{"action":"login","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-24 11:21:49.964725+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2ad4428-27cc-40f3-8f78-7b54d3f955a2', '{"action":"token_refreshed","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2025-03-24 13:25:03.151685+00', ''),
	('00000000-0000-0000-0000-000000000000', '7711e65f-698b-49c2-b06a-771490c42418', '{"action":"token_revoked","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2025-03-24 13:25:03.154365+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5712fa1-77a5-46b6-83f8-3589b8d3299a', '{"action":"logout","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2025-03-24 13:25:06.803624+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e61811fa-86dc-40c6-8a71-d97abe27baab', '{"action":"login","actor_id":"c9eb2288-8690-4dbe-9177-e11eb9fc25b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-24 13:25:17.321348+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'c9eb2288-8690-4dbe-9177-e11eb9fc25b7', 'authenticated', 'authenticated', 'test@test.com', '$2a$10$WwceNHCNoCJAaaPXXmxh9ufyNyLIr2sRSw5a.LvHRah.QW93rtsE6', '2025-03-24 08:42:09.250746+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-03-24 13:25:17.322293+00', '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-03-24 08:42:09.222767+00', '2025-03-24 13:25:17.324991+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('c9eb2288-8690-4dbe-9177-e11eb9fc25b7', 'c9eb2288-8690-4dbe-9177-e11eb9fc25b7', '{"sub": "c9eb2288-8690-4dbe-9177-e11eb9fc25b7", "email": "test@test.com", "email_verified": false, "phone_verified": false}', 'email', '2025-03-24 08:42:09.2417+00', '2025-03-24 08:42:09.241758+00', '2025-03-24 08:42:09.241758+00', 'd5374827-df96-434f-8ca9-363c858400a1');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('4f4cc7b7-09b6-41f6-b665-64791e58c993', 'c9eb2288-8690-4dbe-9177-e11eb9fc25b7', '2025-03-24 13:25:17.322381+00', '2025-03-24 13:25:17.322381+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '172.18.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('4f4cc7b7-09b6-41f6-b665-64791e58c993', '2025-03-24 13:25:17.325172+00', '2025-03-24 13:25:17.325172+00', 'password', 'b78e0a95-2a13-4c0f-a57b-a3113cddda85');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 7, 'bztDzamDWmvZAKu33VXAOQ', 'c9eb2288-8690-4dbe-9177-e11eb9fc25b7', false, '2025-03-24 13:25:17.323599+00', '2025-03-24 13:25:17.323599+00', NULL, '4f4cc7b7-09b6-41f6-b665-64791e58c993');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2025-03-24 13:47:35.085913+00', 'test user', 'c9eb2288-8690-4dbe-9177-e11eb9fc25b7');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2025-03-24 13:32:30.355661+00', 'Packt Publishing', 'packt.local'),
	('weddingtales', '2025-03-24 13:33:23.026108+00', 'weddingtales photography', 'weddingtalesphotography.com'),
	('activenode', '2025-03-24 13:33:53.154195+00', 'activenode education', 'activenode.learn
'),
	('oddmonkey', '2025-03-24 13:34:53.317605+00', 'odd monkey inc





', 'oddmonkey.inc');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2025-03-24 13:53:52.317061+00', 1, 'packt'),
	(2, '2025-03-24 13:54:08.868749+00', 1, 'weddingtales');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 7, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
