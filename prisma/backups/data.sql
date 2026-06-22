SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict 4onH7qdRfnpkIwupOjDWVoetdkUryc6p5qCQG1YRWpAV4HJzG06g7YF9ReJr1Wh

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."roles" ("id", "nombre", "descripcion") FROM stdin;
4	REPARTIDOR	\N
1	ADMIN	Administrador del sistema con acceso total al panel y la configuración de seguridad
2	CLIENTE	Usuario de la tienda web pública sin acceso al panel administrativo
3	EMPLEADO	
5	CAJERO	Encargado de las ventas en la tienda
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."usuario" ("id", "email", "password", "username", "rol_id", "departamento", "direccion", "distrito", "provincia", "referencia", "telefono", "google_place_id", "latitud", "longitud", "dni_ruc", "nombre_razon_social") FROM stdin;
2	dannapuglianini@gmail.com	$2a$10$XUxtnVv0JgChwaKZ0ysp7udU7c508XG44WhvDGQDBPEwBEp3ELmau	Danna	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	m4m2ad.1010@gmail.com	$2a$10$yc3Lwf2QgU7g5Jxm6WiLP.K4WAbO.noPa6xgwBLfh3HJCyaTrdsf6	Aldair	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	diego@nubixmarket.com	$2a$10$6x1qTj7mxjt0mBYvPZO8ieoKpP/jw8R.Hl0OJ68QwZgws7hYjRgEC	Diego	5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	wilmer@nubixmarket.com	$2a$10$6bzfiWkV3d3TJUNZkxi/eu2xXLu9LYL1nlB76Wu0lRSwunSVbJ1xi	Wilmer	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	dapuglianini@gmail.com	$2a$10$jtNnaOuDPN2xv2/77fkf9.9ch.DuOa2BqNyEfcrQgDoDWEQf8fKiy	danni	2	Provincia de Lima	2W5H+JRM, Av. Carlos Izaguirre, Lima 15301, Peru	Urb las Palmeras Etapa 1	Lima	Avenida Carlos Izaguirre	963987951	ChIJ3wGVglHPBZERm6stPLdf0JA	-11.9909013	-77.07045269999999	71379139	CLAUDIA YOLANDA VILLALTA FLORES
9	chris@gmail.com	$2a$10$9gfQP0O9zIF/hB7ixikUFedaH4Rb6uwhZ6zYcuaf6IREa4inJOVSS	Chris Perez	2	\N	Calle Broer	\N	\N	\N	912545588	\N	\N	\N	\N	\N
14	adilsoncarden04@gmail.com	$2a$10$9bcypdkkghaxzAy/pnJWW.sPtARS7qTFVwIgqxsz2LaP.vVSCWa7O	Roberto Acuña	2	Provincia de Lima	Av. Alfredo Mendiola 6377, Los Olivos 15304, Peru	Urb Santa Luisa Etapa 2	Lima	Avenida Alfredo Mendiola 6377	\N	ChIJ1zL1d9jRBZER6w_04eifsY0	-11.9528902	-77.07019489999999	\N	\N
10	wearydiegor@gmail.com	$2a$10$oPacZd2AJcY9VWRSQ/ygNezQRaIw2koM3o1FtZszqXVk3SCi/W4Km	Juan Espinoza	2	Lima	Lima	Carabayllo	Lima	\N	956291978	\N	\N	\N	\N	\N
1	admin@nubixmarket.com	$2a$12$lFJoEjCELFenkcnsQHK60enZmgvxb48UXodCWFRrZbiwev7H7Lh7u	ADMIN	1	\N	MzElt-My House	Lima	\N	\N	\N	\N	\N	\N	\N	\N
11	cuentwilmer@gmail.com	$2a$10$tlMjKO200dLhxx0rWci/XOzy/bHpazTh5SnOSRttWJWC.EZMl8tPe	wilmer	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	x.userprivate.2023@gmail.com	$2a$10$f7GogjxDbi6P1TBg/2jsdOqW9B7DU..h3dhHJCwTNhex0CQzG9yOe	Adilson	2	Provincia de Lima	Av. de las Artes Sur 260, San Borja 15036, Peru	Urb San Borja	Lima	Avenida de las Artes Sur 260	980678355	ChIJV59KudnHBZERhtQLtc05IBM	-12.0966861	-77.0060066	77539383	ADILSON ALDAIR CARDEÑA CUSI
5	tomas@ejemplo.com	$2a$10$9k3jRLBvxLDm8yLub.rXWu502cwqGBV7hNszzlqJ5Q1M2TPzRQzCG	Tomas	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13	lazercr99@gmail.com	$2a$10$2/3ZyqR99PXuaCi0B1uGceMopfjK7viwFJowY9UclryjCc7fp6/uu	Aldair2	2	Provincia de Lima	Av. Carlos Villarán 140, La Victoria 15034, Peru	Santa Catalina	Lima	Avenida Carlos Villarán 140	\N	ChIJ4aPhlVHJBZERYxq-VGJVdSo	-12.0895492	-77.0226192	\N	\N
12	luis@gmail.com	$2a$10$3qPJbvzJUgPUWMALVLiHgenaZUCUjhiDGZeYrzQj2/8W26msNBI9u	Luis	2	Lima Province	Los Olivos, Peru	Los Olivos	Lima Province	Calle 1	\N	ChIJRYx0tiHOBZER1cTopSX65ew	-11.9594191	-77.07589229999999	\N	\N
\.


--
-- Data for Name: carrito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."carrito" ("id", "fecha_actualizacion", "session_token", "usuario_id") FROM stdin;
2	2026-06-03 12:22:19.435657	\N	3
5	2026-06-03 12:41:29.864113	\N	5
1	2026-06-03 13:21:47.909165	\N	2
9	2026-06-08 23:41:49.012713	\N	12
6	2026-06-11 16:12:58.15879	\N	8
11	2026-06-11 11:59:00.970053	\N	14
8	2026-06-05 18:58:30.26485	\N	10
4	2026-06-11 08:35:24.270238	\N	4
7	2026-06-05 19:59:50.246983	\N	9
10	2026-06-11 08:48:13.548608	\N	13
3	2026-06-19 00:53:02.767671	\N	1
\.


--
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."categorias" ("id", "descripcion", "nombre") FROM stdin;
1	Refrescos carbonatados y bebidas efervescentes saborizadas.	Gaseosas
2	Variedad de frutas frescas, de temporada y seleccionadas.	Frutas
3	Leche, quesos, yogures y derivados lácteos esenciales.	Lácteos
4	Bocadillos salados, dulces y aperitivos para picar.	Snacks
5	Productos básicos de despensa y alimentos no perecederos.	Abarrotes
6	Jugos, aguas, licores y todo tipo de líquidos.	Bebidas
\.


--
-- Data for Name: producto_imagenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."producto_imagenes" ("id", "archivo") FROM stdin;
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."productos" ("id", "codigo", "descripcion", "nombre", "precio_compra", "precio_venta", "stock", "categoria_id", "url_imagen", "id_imagen") FROM stdin;
18	7294051836407		Aguaje	3.5	4	19	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959045/nubix-market/productos/g8p5xokwrvntke3lg8zu.jpg	\N
49	6583204917754		Jugo Naranja Natural	4.7	6.5	21	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959141/nubix-market/productos/qa8t6fgurvvlj5eef7ie.jpg	\N
57	7750670313537		Agua Cielo 2.5L	2.5	3.8	29	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959300/nubix-market/productos/izvpp9fjbxwdosf6p985.webp	\N
47	9601842735508		Nescafé Classic Natural	10	12.9	19	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957508/nubix-market/productos/n5soiuut4xekemh5ream.jpg	\N
61	8264051937751	Agua tónica con un amargor equilibrado y burbujas refrescantes, ideal para preparar cócteles o disfrutar sola. Su presentación conserva la calidad y frescura para una experiencia única en cada sorbo.	Agua Tónica Premium Britvic Botella 200 ml	4.2	5.8	40	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780934913/nubix-market/productos/cdvfojvueunl2jghcxts.webp	\N
17	4681739205842		Mirinda Naranja	2.4	3.2	10	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780956845/nubix-market/productos/dgyjxr2xngl3ueebwa2f.webp	\N
85	6418293051764		Arroz Costeño Extra	2.8	4.5	20	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780956540/nubix-market/productos/gzwwexiocquv3pgmvgfb.jpg	\N
53	5917602844731		Chicha Morada	3.5	4.2	39	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780960564/nubix-market/productos/gghk5a0ebdgbcenxyjjv.jpg	\N
81	9384751206983		Queso Gouda Laive	12.4	15.9	20	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780945149/nubix-market/productos/byb9kmd1lgviwcsw5yno.jpg	\N
67	1058734926601	Crema de leche de textura suave y gran versatilidad, ideal para preparar postres, salsas y diversas recetas. Aporta cremosidad y un delicioso sabor que realza tus preparaciones favoritas.	Crema de Leche Nestlé Lata 160 g	7	8.5	34	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780936591/nubix-market/productos/nbtwky1xgxxhbs7iohjf.webp	\N
36	8753204916842		Sandía	7.2	9.9	18	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959493/nubix-market/productos/gpcv9qoksjci5sw7uddl.jpg	\N
41	4062857193648		Chirimoya Cumbe	6.6	4	24	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959647/nubix-market/productos/v9cehg8gezjomtj4ueek.jpg	\N
12	2783649501827	Disfruta de la pureza del agua mineral con finas burbujas refrescantes. Su práctica presentación es ideal para acompañar comidas, brindar una sensación de frescura y disfrutar en cualquier momento del día.	Agua Mineral San Mateo Con Gas 600 ml	1.5	2.2	19	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780934687/nubix-market/productos/tyjak978zasegnf7b0zt.jpg	\N
13	6319057482614	Bebida rehidratante con electrolitos que ayuda a recuperar líquidos y minerales perdidos durante la actividad física. Ideal para mantener una adecuada hidratación antes, durante y después del ejercicio.	Sporade 1.5 L	5.5	6.5	40	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780930697/nubix-market/productos/rkq6pgg3fkcj2o8a43aa.webp	\N
24	5327819402649		Big Cola 3L	4.3	5.5	30	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957336/nubix-market/productos/xzxaycpoyi5lxxrhtl4i.jpg	\N
46	7150392846612		Frugos del Valle Durazno	2.2	2.8	30	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957463/nubix-market/productos/m0lm8avmazwf0snqwa0o.jpg	\N
78	2657194830209		Queso Fresco Laive	7.3	8.9	30	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780936640/nubix-market/productos/pdt2i78hndtimn9icyig.webp	\N
82	6102948573016		Yogurt Laive Vainilla	3.5	4.2	40	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780945820/nubix-market/productos/bisde7pidhlagfkrpfnl.jpg	\N
84	3209581749628	Textura cremosa y sabor dulce inconfundible. Ideal para rellenar tortas, preparar postres, acompañar panes y dar un toque especial a tus recetas favoritas.	Manjar Blanco Nestlé 1 kg	8.9	12	35	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780943561/nubix-market/productos/xnfvwoxgez1yffjggvm4.jpg	\N
50	1092847563820		Agua Sparkling 500ml	2	2.9	40	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958858/nubix-market/productos/cqq3frcmfrqcpmuwiizz.jpg	\N
37	1947603825718		Kiwi Verde	7.5	7.9	30	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959512/nubix-market/productos/ipigshetraotxi2ldjvl.jpg	\N
40	8619472053814	Mandarina de sabor dulce y jugoso, fácil de pelar y perfecta para disfrutar en cualquier momento del día. Rica en vitamina C, es una opción refrescante y saludable para toda la familia.	Mandarina Sin Pepa	3.2	4.8	40	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959633/nubix-market/productos/aslto2vduhzcgv2dfcm3.jpg	\N
58	4071528396640		Cápsulas de té verde	3.2	3.5	30	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959819/nubix-market/productos/yleeiruwsfansf3snrye.webp	\N
59	7639204815573		Kombucha Jengibre	8.2	11.9	30	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780960121/nubix-market/productos/lgukvsxsa30tvck95ekx.jpg	\N
60	1548392766408		Limonada Lista Fria 7up	2.4	3.9	40	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780960357/nubix-market/productos/hwqvb6woqagphw1n8j5q.jpg	\N
64	6842739501187		Tampico 3.L	1.8	12	40	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780960491/nubix-market/productos/f6cop2fdbpabtofwrzsj.jpg	\N
108	3256412365478	Cerveza refrescante y de sabor equilibrado, ideal para compartir en reuniones, celebraciones y momentos especiales. Su práctica presentación permite disfrutarla bien fría en cualquier ocasión.	Cerveza Cristal Lata 355 ml	3.1	4.2	25	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780934791/nubix-market/productos/jl69nloo278ayyqomoh3.png	\N
99	1904765839201		Conserva Durazno Arica	3.2	4.8	0	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957607/nubix-market/productos/bzstqwszr4h6xteetjup.jpg	\N
48	2438751096481	Una infusión de sabor suave y aroma delicado, ideal para disfrutar en cualquier momento del día. Perfecto para acompañar tus momentos de descanso con una bebida cálida y reconfortante.	Te Herbal Manzanilla	2.4	3.2	17	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957634/nubix-market/productos/bgno4xoxyhnjbkd1g5rs.jpg	\N
22	6173840295513	Disfruta del sabor único de Inca Kola sin azúcar y cero calorías. Ideal para quienes buscan una opción ligera sin dejar de disfrutar una bebida refrescante en sus comidas diarias.	Gaseosa Inca Kola Sin Azúcar 1.5 L	4.2	5.9	27	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780930181/nubix-market/productos/ffhqabszvxmbxaiol1sz.webp	\N
20	9812746503816	Agua de manantial envasada con pureza natural y minerales esenciales. Ideal para la hidratación diaria de toda la familia, ofreciendo frescura y bienestar en una práctica presentación para cualquier ocasión.	Agua Mineral San Mateo Sin Gas 2.5 L	2.8	3.9	40	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780935018/nubix-market/productos/ggts5djwtyj00acxbq41.webp	\N
65	4829163051742		Queso Edam Laive	10.3	12.9	21	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780951707/nubix-market/productos/atn7xtzkajaa4tew5zph.jpg	\N
62	5701928463846	Vino blanco elaborado con uvas seleccionadas, de aroma fresco y notas frutales. Ideal para disfrutar como aperitivo o acompañar pescados, mariscos y otras preparaciones especiales.	Vino Blanco Tabernero Gran Blanco Botella 750 ml	19.5	27.9	20	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780935059/nubix-market/productos/m666ornyiyenfqgc22rf.webp	\N
83	7450192836450	Yogurt griego de textura cremosa y consistencia firme, elaborado con leche seleccionada. Ideal para disfrutar en desayunos, acompañar frutas y cereales o incorporar en diversas preparaciones saludables.	Yogur Griego Danlac Natural Frasco 900 g	10.5	12.5	30	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780936511/nubix-market/productos/qwkwekej82ru6j6lx11m.webp	\N
127	5646451631566		Doritos - Sabor Queso	1.6	2.8	69	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780954867/nubix-market/productos/jqwwuinpfa5potj3qkjs.jpg	\N
73	3475609182743		Queso Parmesano Laive	15.4	18.9	23	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780946308/nubix-market/productos/sljygafaqmaele6zalwb.jpg	\N
16	5739201846750	Disfruta del auténtico sabor de guaraná en una práctica presentación personal. Su equilibrio entre dulzura y frescura la convierte en la opción ideal para acompañarte en cualquier momento del día.	Gaseosa Guaraná Backus Botella 450 ml	1.6	2.5	22	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780929863/nubix-market/productos/v92kpusqfu7jpijn6yr1.webp	\N
109	2828200595741	Vino dulce de agradable aroma frutal y sabor suave, ideal para compartir en reuniones, celebraciones y momentos especiales. Una opción perfecta para disfrutar solo o acompañado de diversos aperitivos.	Vino Tinto Queirolo Borgoña Botella 750 ml	16	22.9	17	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780934445/nubix-market/productos/p6r7fhxezpcnbs7jiama.jpg	\N
86	2084759163028	Sabor neutro y alta calidad, ideal para freír, saltear, aderezar ensaladas y preparar todo tipo de recetas. Aporta suavidad y versatilidad en la cocina diaria.	Aceite Primor 900 ml	7.4	9.9	30	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780936714/nubix-market/productos/d4uguu4rnhjueyw5mxbd.webp	\N
80	5019283746105	Leche evaporada enriquecida con vitaminas, de textura cremosa y gran calidad. Ideal para preparar desayunos, bebidas y diversas recetas, aportando sabor, nutrición y rendimiento para toda la familia.	Leche Evaporada Gloria Etiqueta Azul Lata 390 g	3.5	4.5	35	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780936758/nubix-market/productos/dpreaqo5j899k9ql1uvz.webp	\N
131	656498456165		Chocman	1.7	3	28	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780955226/nubix-market/productos/km0rcyd3akpl2luokkwr.jpg	\N
91	1705849237619		Lentejas Costeño 500g	3.3	4.9	34	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780956835/nubix-market/productos/lq1tfgq6jk6lwagswptf.jpg	\N
93	5391084726195		Harina Blanca Flor	2.4	3.4	30	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957030/nubix-market/productos/tie4ypfpi6pzcfflu8yj.jpg	\N
94	9126384750917		Avena Quaker 900g	4.3	6.9	30	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957095/nubix-market/productos/i3nx8pg9xz3qre6czuem.jpg	\N
96	8047619238504		Mayonesa Alacena 475g	4.3	5.9	35	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957297/nubix-market/productos/piidiadaudwzsbkutwco.jpg	\N
101	9471820657348		Maizena Duryea	2.4	3.2	30	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957707/nubix-market/productos/zo9vkp25gynhiggkwxt6.jpg	\N
137	848415644874		Casino - Sabor Choco	1.2	2.5	130	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958865/nubix-market/productos/nqpo6onicgqfgqfyjpjv.webp	\N
141	8489456454656		Galleta Picaras - Sabor Fresa Pasion	2	3.5	48	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959422/nubix-market/productos/bhnpbudswhxlref7cxrx.webp	\N
14	8451720395648	Disfruta del refrescante sabor lima-limón de Sprite. Su fórmula burbujeante es ideal para calmar la sed y acompañar cualquier ocasión. Perfecta para mantener siempre fría en casa y compartir en familia.	Gaseosa Sprite Botella 2.25 L	5.3	7.5	25	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780930031/nubix-market/productos/yx2crpdsuvzxkfffzx2y.jpg	\N
152	2123156454		Inka Chips - Sabor Sal de Mar	3.5	5	39	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959153/nubix-market/productos/bdrwq3rbkb6uicqhx55y.webp	\N
154	5646984568		Galleta Animalitos	1.2	2	6	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959245/nubix-market/productos/kgdvsxxc6fxfbe2ijrgk.webp	\N
144	5456456465		Chocolate Trianguilo	4	5	0	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959011/nubix-market/productos/lwked4thgigapozsyc0k.webp	\N
157	6874156868		Club Social - Sabor Jamon	3	4.2	69	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959309/nubix-market/productos/vk3lt8cdsnfkipnynpgt.webp	\N
156	461241785		Tor tees Picante	1.5	2.5	19	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959294/nubix-market/productos/t0mqlhrnb2isa9p9lxos.webp	\N
124	655156165		Gomitas Ambrosito - Ositos	1.5	3	69	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958684/nubix-market/productos/guy1ckkrjoskatfggtvd.jpg	\N
123	411215656		Inka Chips - Jalapeño	1.8	3.6	51	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780954504/nubix-market/productos/a1ifvsk3kwmp0fyiu0rs.jpg	\N
55	2854719036482	Alimento granulado elaborado con una combinación de cacao, vitaminas y minerales. Ideal para disfrutar en bebidas frías o calientes, aportando energía y un delicioso sabor a chocolate para toda la familia.	Alimento Granulado Milo Activ-Go 380g	19.8	21.9	30	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780934844/nubix-market/productos/nvxagscr8magzce93blc.webp	\N
79	8746201958374	Textura suave y sabor tradicional, ideal para untar en panes, preparar desayunos y complementar diversas recetas. Práctica y versátil para el uso diario en tu cocina.	Margarina MANTY Clásica Pote 300g	7.2	9.2	40	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780936376/nubix-market/productos/zcrbnycnfl4wearckug1.webp	\N
27	8261495730284	Crujientes, dulces y sin pepas, estas uvas son un snack saludable ideal para toda la familia. Perfectas para los niños y para acompañar tablas de quesos.	Uva Verde Sin Pepa	6	8.9	37	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959219/nubix-market/productos/argxtaim1ycjjawsdzx7.jpg	\N
44	6503921847415	Cereza Bing de gran tamaño, piel brillante y sabor intensamente dulce. Su pulpa firme y jugosa la convierte en una opción perfecta para disfrutar fresca, acompañar postres o dar un toque elegante a tablas de frutas y quesos.	Cereza Bing	4.8	6.4	14	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959680/nubix-market/productos/dnu7qp1xeaebwx3iee1r.jpg	\N
117	154541553153		Obsesion de Chocolate	1	2	12	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780954041/nubix-market/productos/j1ub8rep9hhxopeuzapx.jpg	\N
77	4309182756406	Elaborado con leche de calidad y el delicioso sabor de la fresa. Cremoso, nutritivo y perfecto para disfrutar en el desayuno, como merienda o acompañado de frutas y cereales.	Yogurt Gloria sabor fresa 946 g	3.8	4.2	40	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780945408/nubix-market/productos/o2tqs0oa8f0cc1hjgzpj.jpg	\N
88	3569182746503	Elaborada con trigo de calidad para lograr una textura firme y excelente cocción. Ideal para preparar una gran variedad de recetas de pasta, acompañadas de tus salsas favoritas.	Pasta Seca de Trigo Spaghetti Don Vittorio	2.2	3.8	25	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780956699/nubix-market/productos/ne70wvapitgs5sqdrdlz.jpg	\N
139	531154156416		Papi Ricas - Sabor Pollo a la Brasa	2.4	5	20	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958917/nubix-market/productos/sh9obbdhcjwm9vgjdwce.webp	\N
92	6842019573806	Frijol Canario Costeño, seleccionado por su excelente calidad, textura cremosa y sabor tradicional. Ideal para preparar guisos, menestras y diversas recetas caseras, aportando nutrición y el auténtico sabor de la cocina peruana.	Frijol Canario Costeño	8.5	10.4	29	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780956957/nubix-market/productos/kyntobuyavjuiqqufmi9.jpg	\N
103	8264501937846	Alta calidad y dulzor equilibrado, ideal para endulzar bebidas, preparar postres, repostería y diversas recetas. Práctica presentación para el uso diario en el hogar.	Azúcar Blanca BELL'S Bolsa 2Kg	6.5	9	30	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957811/nubix-market/productos/jj6jmz3eohdwkkl0pqph.jpg	\N
104	5791038264957	Concentrado en forma sólida y listo para usar. Ideal para dar sabor a sopas, guisos, arroces y diversas recetas de manera práctica y rápida.	Cubo de Caldo Maggi	1	1.5	40	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957887/nubix-market/productos/o2ghslwcbmi8ovzlrduo.jpg	\N
140	1541654656		Papas Kryspo - Sabor Original	6.5	7.5	60	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958936/nubix-market/productos/piom0vnbl5fekzwdj7np.webp	\N
147	154955863		Lays Ondas Picante	1.5	2.8	59	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959046/nubix-market/productos/srep1wmbv9tcof0ylqo5.webp	\N
150	6521852288		Frutos Secos - Villa Natura	6.9	8	80	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959127/nubix-market/productos/dfzol2v7oan6xm4hapri.webp	\N
113	87846513216	GALLETAS SALADAS RELLENAS CON CREMA SABOR A QUESO	Galleta Ritz - Sabor Queso	3	4.5	9	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780955256/nubix-market/productos/hfmnd2goypaveqduoxwv.jpg	\N
159	9723186323		Galletas Saladas Doré	4	5.5	49	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959338/nubix-market/productos/dds8dqaxrwpg1trllrav.webp	\N
155	5464561555		Chifles del Vraem Tiyapuy	5	7	19	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959279/nubix-market/productos/lvlsue1igsrka3ev7mxb.webp	\N
158	94654156866		Prezlet Salados - Sabor Original	7	10	24	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959328/nubix-market/productos/eqxft8jd26v4tlgtbnpg.webp	\N
52	3209481756617	Una bebida cremosa y refrescante elaborada con el delicioso sabor tropical del mango. Ideal para disfrutar en cualquier momento del día, aportando frescura y una experiencia naturalmente dulce.	Smoothie de Mango	6.2	7.9	24	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959471/nubix-market/productos/rqhtkyix9c1it1vgwjy0.jpg	\N
39	7204639182547	Durazno fresco de pulpa jugosa y sabor dulce, con una textura suave y aroma delicado. Ideal para disfrutar solo, en ensaladas de frutas, jugos, postres o como ingrediente en diversas preparaciones.	Durazno Fresco	5.8	6	21	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959550/nubix-market/productos/xxfkxdjruma6a5vw9g26.jpg	\N
68	9182746503195	Queso Mozzarella de textura suave y excelente capacidad de fundido, ideal para pizzas, lasañas, sándwiches y diversas preparaciones. Su sabor delicado y cremoso aporta el toque perfecto a tus recetas favoritas.	Queso Mozzarella	1.2	2.2	18	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780948040/nubix-market/productos/l4wx9hlfibiorszypkyp.jpg	\N
126	84984516515		Galleta Gretel - Sabor Manjar	2.6	3.6	149	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780954763/nubix-market/productos/g47pg9qerbrwxmajyfjx.jpg	\N
121	41216842313		Papas Lays - Clasicas	2.3	3	298	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958651/nubix-market/productos/y5zjwxbr8reyilpwigpo.webp	\N
71	8039517264017	Margarina Dorina de textura suave y sabor delicioso, ideal para untar en panes, preparar sándwiches y realzar tus recetas favoritas. Perfecta para cocinar y hornear, brindando practicidad y versatilidad en tu cocina.	Margarina Dorina	3.6	5.9	22	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780941584/nubix-market/productos/iinus4m15hlntjstbd62.jpg	\N
19	3569182047751	Disfruta del clásico sabor a fresa de Kola Real en su presentación familiar de 3 litros. Ideal para reuniones, celebraciones y momentos para compartir, ofreciendo una opción refrescante, dulce y rendidora para toda la familia.	Gaseosa Kola Real Sabor Fresa 3 L	5	6.89	30	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780929951/nubix-market/productos/tjhkzrl9khjplrddn3nw.jpg	\N
32	4801927365549	Limón fresco y jugoso, seleccionado por su intenso aroma y alto contenido de jugo. Ideal para preparar refrescantes limonadas, sazonar ceviches y realzar el sabor de todo tipo de comidas y bebidas.	Limón	1.4	1.8	48	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959358/nubix-market/productos/dzqzol3rpjokuc036vts.jpg	\N
21	2405839174628	Disfruta del inconfundible sabor de la bebida nacional en su presentación familiar de 3 litros, ideal para compartir comidas y momentos especiales en familia.	Gaseosa Inca Kola Botella 3 L	8.2	11.5	26	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780929691/nubix-market/productos/eptupbjdfld0xyi9xxyt.webp	\N
15	1902847563819	Bebida con un delicado toque de jengibre y un sabor ligeramente picante. Ideal para preparar cócteles, acompañar reuniones o disfrutar bien fría en cualquier ocasión especial.	Gaseosa Schweppes Ginger Ale Botella 1.5 L	4.5	6.3	34	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780930103/nubix-market/productos/vewsyja1hqudzdqypd7u.webp	\N
23	8042951736402	Disfruta del intenso sabor a naranja de Fanta y su refrescante efervescencia. Ideal para reuniones, celebraciones o para disfrutar de una bebida dulce y divertida en cualquier momento del día.	Gaseosa Fanta Naranja Botella 2.25 L	5.3	7.45	35	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780930652/nubix-market/productos/croicn7lnyejz3rubpum.webp	\N
76	7861054938270	Lista para usar y con una textura ligera y esponjosa. Ideal para decorar tortas, postres, bebidas y frutas, aportando un delicioso toque de dulzura y cremosidad.	Crema Chantilly PRÉSIDENT Frasco 250g	10	16.5	30	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780945611/nubix-market/productos/zdanvergeck8l7vuxk8w.jpg	\N
135	78741456116		Casino - Sabor Menta	1.2	2.2	30	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958827/nubix-market/productos/q3agltyxmmrr2ip6ypmo.webp	\N
128	56464156165		Doritos Flamin Hot	1.7	3.8	20	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780955015/nubix-market/productos/ht7efsswnrrb6ifzee8c.jpg	\N
130	5644654668		Cuates Picantes	1.2	2.5	40	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780955175/nubix-market/productos/tdjsrg9koninvymivttq.jpg	\N
132	8789456545		Chizitos - Sabor Queso	1.4	2	30	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780955842/nubix-market/productos/kwiu51edrja4awtj0uee.jpg	\N
136	8789411654		Casino - Sabor Lucuma	1.2	2.2	30	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958845/nubix-market/productos/ygns6uy3s1ff32gjp4yi.webp	\N
148	56564151516		Doritos Dinamita - Sabor Limon Taquero	1.3	3	8	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959093/nubix-market/productos/sx6cpbx9tiyyz9rjmpsw.jpg	\N
149	64651215665		Doritos - Sabor Pizza	1.8	2.5	30	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959107/nubix-market/productos/kndtzdob83ivkyzjggof.webp	\N
107	1598745632145	Cerveza elaborada con cebada malteada y lúpulos seleccionados, destacando por su sabor equilibrado, color dorado y refrescante carácter. Ideal para acompañar comidas, reuniones y momentos especiales, brindando una experiencia única en cada sorbo.	Cerveza Cusqueña Dorada Botella 310 ml	3.5	4.8	85	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780934578/nubix-market/productos/kv75e0864fcsrgvwhwzs.png	\N
89	8201947365182	Obtenida de forma natural y presentada en un práctico envase con molinillo para una dosificación precisa. Ideal para realzar el sabor de carnes, ensaladas, pastas y todo tipo de preparaciones.	Sal de Mar con Molinillo 88 gr Lobos	10.3	13.2	34	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780936469/nubix-market/productos/bcx94qphm9ponflahg7d.webp	\N
8	8402715963840		Sprite 3L	4.8	5.2	0	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780954147/nubix-market/productos/czb6lztu8tlzmiy4chnv.webp	\N
114	87432121315		Pringles Original	5	7	0	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780955546/nubix-market/productos/oouyqbmjlq0twv6sj1eo.jpg	\N
125	56511516155		Pastelito Gansito - Chocolate	1.7	3.5	8	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958709/nubix-market/productos/idpqgver36p75oidcynp.jpg	\N
97	4312059781643		Chocolate Sublime	0.8	1.5	39	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957461/nubix-market/productos/jgl1rkr61zgmvye8appy.jpg	\N
120	4541548151		Gomitas Loop - Super Acidas	3	4.2	48	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780955971/nubix-market/productos/zr7ubcgra6trx2gjceie.jpg	\N
133	484511651655		Cheetos Horneados	1.5	2.5	200	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780955348/nubix-market/productos/fanae2sfdx6g699grx8z.jpg	\N
11	5047182936501	Disfruta del delicioso sabor a piña de Concordia, una bebida refrescante ideal para acompañar tus comidas y compartir en familia. Su agradable toque frutal la convierte en una excelente opción para cualquier ocasión.	Gaseosa Concordia Sabor Piña 3 L	3.8	5.2	13	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780930210/nubix-market/productos/tz3ncareubyyznbmtgvh.webp	\N
134	8322315656		Cheese Tris	1.2	2.2	150	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780956273/nubix-market/productos/jucxbdyegru9sphfaqfp.webp	\N
56	6392051847749	Elaborado con granos de café seleccionados para ofrecer un aroma intenso y un sabor equilibrado. Ideal para disfrutar una taza de café de calidad de forma rápida y práctica en cualquier momento del día.	Café Instantáneo Altomayo Gourmet 150g	28.6	32.8	25	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780956156/nubix-market/productos/ec2caxskkdbxluh0vsuz.jpg	\N
87	9753108465921	Elaborada con caña de azúcar seleccionada y de sabor naturalmente agradable. Ideal para endulzar bebidas, preparar postres y diversas recetas, en una práctica presentación para el consumo familiar.	Azúcar Rubia BELL'S Bolsa 5Kg	7.2	9.5	33	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780956626/nubix-market/productos/si5s8ktf4jfomz8k8jbb.jpg	\N
122	1251565156		Inka Chips - Sabor BBQ y Cebolla	2	3.8	16	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958664/nubix-market/productos/txlhnpjup27tg1vxp1l2.webp	\N
63	3916482755502	Leche 100% pura y ultra pasteurizada, ideal para disfrutar en desayunos, preparar bebidas y elaborar diversas recetas. Su práctico formato conserva la calidad y el sabor natural, aportando nutrientes esenciales para toda la familia.	Leche Fresca UHT Gloria Entera Caja 1 L	4	5.3	34	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780941111/nubix-market/productos/wqg505kpnqmeimefqr3s.webp	\N
129	515645411655		Doña Pepa	1.8	2.8	9	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958803/nubix-market/productos/qqb9vihbvy0avydqdjhf.webp	\N
118	7251121525		Galleta Morocha - Sabor Chocolate	1.2	2	28	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780955765/nubix-market/productos/qlbkxnqlzccqigii6jtg.jpg	\N
66	7392058149637	Elaborado con leche de calidad y el delicioso sabor de una de las frutas más emblemáticas del Perú. Cremoso, nutritivo y perfecto para disfrutar en el desayuno, acompañado de frutas o cereales.	Yogurt SBELT Sabor a Lúcuma Botella 946g	4.2	4.5	27	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780941344/nubix-market/productos/bzpc5twl2gjt45enbwld.webp	\N
45	4827619053847	Agua mineral natural de gran pureza y frescura. Ideal para mantener una hidratación adecuada en cualquier momento del día, gracias a su práctica presentación para llevar a donde vayas.	Agua San Mateo 600ml	1	2.2	29	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780934699/nubix-market/productos/giroa2hzox4iurjzujkh.webp	\N
110	0036459665	HOJUELAS DE PLÁTANO FRITAS CON SABOR A LECHE DE TIGRE 100% PIURANOS	Chifles Karinto	3.2	4.5	49	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780954307/nubix-market/productos/ovqubjucjsnweth49s3p.png	\N
111	4894984465	PALITOS ENRROLLADOS DE QUESO EXTRA PICANTE	Takis Fuego	5.2	6.9	99	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780953569/nubix-market/productos/yxfypyznvuuvtbdx71l0.jpg	\N
112	47984846465	CHOCOLATE BLANCO CON MANÍ	Chocolate Blanco Sublime	3.2	4	19	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780954731/nubix-market/productos/mpvjkt7v5oxnlrbh1azh.jpg	\N
90	4938271059640	Elaborado con cortes seleccionados de atún de textura firme y sabor natural. Ideal para ensaladas, sándwiches, pastas y diversas preparaciones, brindando practicidad y una excelente fuente de proteína para tus comidas.	Atún Florida Filete en Trozos	4.6	5.9	40	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780956783/nubix-market/productos/xyzv5c38veudtbsr3hgg.jpg	\N
98	7583946102958	Elaborada con fruta seleccionada para ofrecer un sabor delicioso y una textura suave. Ideal para acompañar panes, tostadas, postres y diversas preparaciones en cualquier momento del día.	Mermelada Gloria 1 kg	13.2	15.9	30	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957551/nubix-market/productos/lpd6tjsnnzigm20odqsx.jpg	\N
102	3159608472013		Leche en Polvo Gloria	6.5	8.9	30	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957760/nubix-market/productos/gm8j0bexbdnp659j1yeg.jpg	\N
95	2675901847362		Salsa Tomate Alacena	1.3	2.8	22	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957175/nubix-market/productos/g97rashhjqq4mkukbrfp.jpg	\N
43	2846719305586	Maracuyá fresco de aroma intenso y sabor tropical entre dulce y ácido. Ideal para preparar jugos, postres, salsas y cócteles, aportando un toque refrescante y exótico a tus recetas.	Maracuyá	2.5	3.5	29	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959669/nubix-market/productos/eidtb4ceh4hj5rvminth.jpg	\N
100	6029183746509		Vinagre Blanco Florida 625ml	1.3	2.5	35	5	https://res.cloudinary.com/dzy3uggys/image/upload/v1780957653/nubix-market/productos/uo66nxbtr4hbkphlkedr.jpg	\N
116	45412315646		Galleta Picaras - Sabor Clásico	2	3.5	198	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958626/nubix-market/productos/c2phihquwvf64yxzzxgv.webp	\N
51	8745619302845	Formulada para ayudar a reponer líquidos y electrolitos durante la actividad física. Su refrescante sabor a mora la convierte en una opción ideal para mantenerte hidratado antes, durante y después del ejercicio.	Bebida Rehidratante Powerade Mora Botella 600 mL	2.2	3.5	20	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958678/nubix-market/productos/amdtzhtzwsefzhtmxiel.jpg	\N
138	41515646565		Beso de Moza - Caja Original	7	10	60	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958899/nubix-market/productos/nmakwcmemcvb6mx6e69k.webp	\N
142	1654644564665		Cereal Bar - Chips Cereal	1.8	2.49	40	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958960/nubix-market/productos/chxpr6kuxw5qix8vdg18.jpg	\N
145	45645645646		Angel Copix	2.5	3.8	20	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959023/nubix-market/productos/pcoarbcvdabjgkgifgbf.webp	\N
146	6456845866		Chocolate Chin Chin	1	1.8	30	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959072/nubix-market/productos/pkkq3uucqbtf515cs3dj.jpg	\N
162	7750182008938		Agua San Luis Sin Gas 3L	3	4.5	43	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780960535/nubix-market/productos/ukctfvdy5oexg5gzsvan.webp	\N
151	2548975565		Galleta Agua Line	2	3	50	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959140/nubix-market/productos/ryqntaqcntkflkus4k9t.webp	\N
153	5548976548		Inka Chips - Sabor Nativas	3.5	4.5	19	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959566/nubix-market/productos/k29jskgq2qzqebsdn0fr.webp	\N
143	21231864486		Galleta Margarita	1.7	2.2	50	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959221/nubix-market/productos/cfl3jzw6ivbfa9hrdrwm.jpg	\N
33	7610382946157	Naranja fresca y jugosa, seleccionada por su sabor dulce y refrescante. Ideal para preparar jugos naturales, consumir como snack o complementar una alimentación saludable gracias a su aporte de vitamina C.	Naranja	2.8	3	38	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959385/nubix-market/productos/vruea3clfz36ftguihs9.jpg	\N
35	6091842735501	Papaya fresca de pulpa suave, color naranja intenso y dulce sabor natural. Ideal para preparar jugos, ensaladas de frutas o disfrutarla sola, aportando frescura y nutrientes esenciales a tu alimentación diaria.	Papaya Kent	2.8	4.2	34	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959475/nubix-market/productos/jb3kirjxx5inzlof9wnb.jpg	\N
38	5382917406650	Palta de textura cremosa y sabor suave, ideal para preparar desayunos, ensaladas, guacamole y diversas recetas. Rica en grasas saludables y nutrientes esenciales, es una excelente opción para una alimentación equilibrada.	Palta Fuerte	6.5	7	30	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959530/nubix-market/productos/pzptfgnm7miyqk8c8hac.jpg	\N
54	7461839205506	Disfruta de una cerveza de sabor equilibrado y refrescante, elaborada con una cuidadosa combinación de malta y lúpulo. Ideal para compartir en reuniones, celebraciones o momentos especiales con amigos y familiares.	Cerveza Pilsen Callao Botella Retornable 630 ml	4.5	6	20	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959637/nubix-market/productos/skndeffhjjvasainas6l.jpg	\N
29	6472839105542	Pera fresca, jugosa y naturalmente dulce, con una textura suave y refrescante. Ideal para disfrutar como snack, en ensaladas de frutas, postres o como complemento saludable en cualquier momento del día.	Pera Fresca	2.5	3.5	27	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959292/nubix-market/productos/xfdpci4yvedrmtkxsnne.jpg	\N
5	4839201746581	El clásico sabor refrescante en presentación de 3 litros, ideal para compartir en reuniones, celebraciones y comidas familiares. Disfrútala bien helada y vive su calidad en cada vaso.	Gaseosa Coca-Cola Sabor Original 3 L	8.5	11.9	54	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780928493/nubix-market/productos/wtt4bbualvpldtwfjyom.webp	\N
42	9731504826671		Coco Fresco	3.7	3	19	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959658/nubix-market/productos/wws3i0qnn3ehfyspoohf.jpg	\N
167	7750670010238		Sporage Tropical 500ml	1.8	2.5	95	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1781189168/nubix-market/productos/asecm5sk5gjh5iihajeb.webp	\N
6	7264519038427	Disfruta del sabor clásico de Coca-Cola Zero, una opción sin azúcar ideal para acompañar tus comidas o refrescarte en cualquier momento del día, con toda la intensidad y frescura que la caracteriza.	Gaseosa Coca-Cola Sin Azúcar 1.5 L	4.3	6	9	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780929518/nubix-market/productos/mtzwapxu8woko6avvdqu.webp	\N
9	3175092846712		Fanta Naranja 1.5L	4.9	5.2	16	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780955077/nubix-market/productos/azbuqevuclutuijmqere.jpg	\N
166	7750670009041		Agua Cielo 1L	1.8	2.5	49	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1781188905/nubix-market/productos/u9mdav5ouyophrrnkaww.webp	\N
168	7750670244954		Agua Cielo 625ml	1	1.5	98	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1781188960/nubix-market/productos/npc7q4iiq4sesfogqkqj.webp	\N
26	3905718264038	Plátano de seda de sabor dulce y textura suave, ideal para consumir como snack, preparar batidos, postres o complementar una alimentación equilibrada. Una fuente natural de energía perfecta para toda la familia.	Plátano de Seda	2.2	3.5	27	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959183/nubix-market/productos/ef0bwap9rf9tstfrzcsy.jpg	\N
115	2158411313		Chocolate Princesa	3	4	24	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780958591/nubix-market/productos/zphx7nse3ziv3iabxc3m.jpg	\N
70	2748391056829		Natillas Pura Crema	2.5	3.5	28	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780951455/nubix-market/productos/oarx0urayedolvorlaah.jpg	\N
31	2537604918276		Melón Coquito	10.4	12	23	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959331/nubix-market/productos/zzzwevcxejfvny4lawf5.jpg	\N
30	9182746501835	Mango de pulpa carnosa, sin hebras y con un dulzor intenso y aromático. Ideal para disfrutar fresco, preparar postres, helados artesanales o dar un toque exótico a ensaladas y ceviches.	Mango Kent	4.5	6.79	38	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959314/nubix-market/productos/ftedc3s0ouwt8e61jc6s.jpg	\N
28	1059384726617	Fresas frescas de color rojo intenso, sabor dulce y gran jugosidad. Ideales para consumir solas, preparar jugos, postres, ensaladas o acompañar yogures y cereales, aportando frescura y nutrientes a tu alimentación diaria.	Fresa Fresca	5.8	8.5	28	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959246/nubix-market/productos/xth7vqqshanymdrk15vi.jpg	\N
72	6194827501936		Yogurt Griego Natural	7.3	9.9	27	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780946568/nubix-market/productos/fvpj92dlfhturvjhjjz9.jpg	\N
74	9901847362051	Leche especialmente formulada para apoyar el crecimiento infantil, enriquecida con vitaminas y minerales esenciales. Ideal para complementar una alimentación balanceada, aportando nutrición y energía en cada etapa del desarrollo.	Leche Evaporada Gloria Niños Lata 395 g	3.6	4.7	22	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780944552/nubix-market/productos/oj0jmdnt0vhizrqpwub3.jpg	\N
75	1529038475618	Yogurt Kéfir Natural de textura cremosa y sabor suave, elaborado mediante fermentación natural. Ideal para disfrutar en el desayuno, acompañado de frutas y cereales, o como una opción nutritiva para cualquier momento del día.	Yogurt Kéfir Natural	5.4	8.5	47	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780943254/nubix-market/productos/z5c6tgpsh3ez1sjlozyc.jpg	\N
69	5601948372058	Queso fresco elaborado con leche seleccionada, de sabor suave y textura firme. Ideal para desayunos, sándwiches, ensaladas y diversas preparaciones, aportando calidad y frescura para toda la familia.	Queso Fresco Pasteurizado Laive 300 g	11.5	15.9	21	3	https://res.cloudinary.com/dzy3uggys/image/upload/v1780952712/nubix-market/productos/iubo7fc1ft5dhprgb3kg.jpg	\N
10	9628401753946	Kola Real 3L. Producto de calidad ideal para consumo diario. Elaborado o seleccionado bajo estándares adecuados para brindar una experiencia satisfactoria, sabor agradable y excelente rendimiento según su categoría.	Kola Real 3L	5.93	7.9	12	1	https://res.cloudinary.com/dzy3uggys/image/upload/v1780955462/nubix-market/productos/pqvl05grpehauqtqcu3q.png	\N
119	7750168000697		Mini Chips - Chips Ahoy!	2	2.5	49	4	https://res.cloudinary.com/dzy3uggys/image/upload/v1780954176/nubix-market/productos/tv77awsc4kd4do8x1gfj.jpg	\N
7	1958374620184	Agua pura y refrescante en una práctica presentación familiar. Ideal para la hidratación diaria, preparar alimentos y acompañar un estilo de vida saludable, brindando frescura y bienestar para toda la familia.	Agua San Luis Sin Gas Botella 7 L	3	6.19	7	6	https://res.cloudinary.com/dzy3uggys/image/upload/v1780934744/nubix-market/productos/ltfjv55c3wrjmsyadprk.webp	\N
25	7148203956471	Manzana fresca de textura crujiente y sabor equilibrado entre dulce y ácido. Ideal para consumir sola, preparar postres, ensaladas o complementar una alimentación saludable con su aporte natural de fibra y nutrientes.	Manzana Delicia	3.5	4.9	26	2	https://res.cloudinary.com/dzy3uggys/image/upload/v1780959072/nubix-market/productos/xneqtmwprcqehzqpkqee.jpg	\N
\.


--
-- Data for Name: carrito_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."carrito_items" ("id", "cantidad", "carrito_id", "producto_id") FROM stdin;
22	1	2	49
24	1	2	95
25	1	2	45
35	1	2	16
37	1	2	81
38	1	2	36
39	1	2	30
40	1	2	32
41	1	2	43
43	1	2	37
44	1	2	26
45	1	2	25
46	1	2	27
47	1	2	39
49	1	2	92
50	1	2	51
58	1	5	45
17	4	2	99
340	3	6	122
341	3	6	7
342	1	6	15
343	1	6	25
344	1	11	5
345	1	11	6
323	1	4	10
324	1	4	9
124	1	7	49
125	1	7	81
\.


--
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."proveedores" ("id", "email", "nombre", "ruc", "telefono") FROM stdin;
1	contacto@makro.com.pe	MAKRO SUPERMAYORISTA S.A.	20505118742	987654321
2	televentas@backus.pe	UNION DE CERVECERIAS PERUANAS BACKUS Y JOHNSTON S.A.A.	20100113610	981234567
3	atencionclientes@alicorp.com.pe	ALICORP S.A.A.	20100047218	994561237
4	corporativo@nestle.com.pe	NESTLE PERU S.A.	20100072328	963852741
5	pedidos@lindley.pe	CORPORACION LINDLEY S.A. (Coca-Cola / Inca Kola)	20100229243	951753462
6	distribucion@gloria.com.pe	GLORIA S.A.	20100095450	954123687
7	ventas@pg.com	PROCTER & GAMBLE DEL PERU S.R.L. (P&G)	20100155291	988776655
8	institucional@kcc.com	KIMBERLY-CLARK PERU S.R.L.	20100128056	912345678
9	comercial@molitalia.com.pe	MOLITALIA S.A.	20100147949	977665544
10	ventas@pamolsa.com.pe	PERUANA DE MOLDURAS S.A. (PAMOLSA)	20382869910	933221100
11	ventas@chocolates.com.pe	COMPAÑIA NACIONAL DE CHOCOLATES DE PERU S.A. (Winter's)	20100055237	944556677
12	pedidos@mdlz.com	MONDELEZ PERU S.A. (Field / Kraft)	20100057361	922334455
13	corporativo@san-fernando.com.pe	SAN FERNANDO S.A.	20100187576	955667788
14	logistica@inretail.pe	INRETAIL PERU S.A. (Supermercados Peruanos / Mass)	20131562916	966778899
15	atencion@jnj.com	JOHNSON & JOHNSON DEL PERU S.A.	20100121809	911223344
\.


--
-- Data for Name: compras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."compras" ("id", "fecha", "numero_factura", "total", "proveedor_id") FROM stdin;
\.


--
-- Data for Name: detalle_compras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."detalle_compras" ("id", "cantidad", "precio_unitario", "subtotal", "compra_id", "producto_id") FROM stdin;
\.


--
-- Data for Name: favoritos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."favoritos" ("id", "producto_id", "usuario_id") FROM stdin;
167	7	1
244	25	4
174	5	8
175	7	8
176	6	8
178	12	8
179	11	8
72	45	5
263	12	4
264	15	4
265	14	4
266	7	4
267	6	4
268	25	1
271	67	1
275	9	4
205	12	1
207	15	1
208	11	1
48	45	3
50	81	3
280	14	1
281	13	1
214	9	1
55	99	3
56	51	3
57	39	3
282	16	1
216	11	4
217	67	4
218	13	4
219	16	4
220	8	4
283	25	8
284	67	8
285	15	8
286	9	8
287	65	8
288	68	8
229	8	1
230	5	4
293	67	13
296	6	13
308	7	13
310	5	13
312	25	13
314	12	13
316	15	13
318	11	13
320	14	13
322	13	13
324	9	13
327	122	8
328	18	14
330	35	8
\.


--
-- Data for Name: notificaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."notificaciones" ("id", "fecha", "leido", "mensaje", "tipo", "usuario_id") FROM stdin;
1	2026-06-03 14:25:45.584623	f	Nuevo pedido web creado (ID #1).	pedido	1
2	2026-06-03 14:25:45.763833	f	Pago confirmado para el pedido #1.	pago	1
3	2026-06-03 14:25:45.946075	f	Pedido Fast Lane #1 registrado. Código de recojo: 4C07CC79	recojo	1
4	2026-06-03 14:29:35.38706	f	Nuevo pedido web creado (ID #2).	pedido	1
5	2026-06-03 14:29:35.557825	f	Pago confirmado para el pedido #2.	pago	1
6	2026-06-03 14:32:00.253603	f	Nuevo pedido web creado (ID #3).	pedido	1
7	2026-06-03 14:32:00.423003	f	Pago confirmado para el pedido #3.	pago	1
8	2026-06-03 14:32:00.590895	f	Pedido Fast Lane #3 registrado. Código de recojo: 7F6E685D	recojo	1
9	2026-06-03 14:39:21.619143	f	Nueva venta presencial registrada (ID #4).	pedido	1
10	2026-06-03 14:39:21.70925	f	Pago confirmado para la venta #4.	pago	1
11	2026-06-03 14:51:38.541732	f	Estado del pedido #3 actualizado a EN_PROCESO.	pedido	1
12	2026-06-03 14:51:42.252849	f	Estado del pedido #2 actualizado a EN_PROCESO.	pedido	1
13	2026-06-03 15:37:54.576656	f	Nueva venta presencial registrada (ID #5).	pedido	1
14	2026-06-03 15:37:54.667119	f	Pago confirmado para la venta #5.	pago	1
15	2026-06-03 17:09:55.192661	f	Nueva venta presencial registrada (ID #6).	pedido	7
16	2026-06-03 17:09:55.281371	f	Pago confirmado para la venta #6.	pago	7
17	2026-06-04 00:04:26.175921	f	Nuevo pedido web creado (ID #7).	pedido	1
18	2026-06-04 00:04:26.349316	f	Pago confirmado para el pedido #7.	pago	1
19	2026-06-04 09:06:51.766478	f	Nuevo pedido web creado (ID #8).	pedido	1
20	2026-06-04 09:06:51.966304	f	Pago confirmado para el pedido #8.	pago	1
21	2026-06-04 09:21:42.386641	f	Estado del pedido #7 actualizado a LISTO_PARA_RECOJO.	pedido	1
22	2026-06-04 09:35:54.500048	f	Estado del pedido #7 actualizado a EN_CAMINO.	pedido	1
23	2026-06-04 09:36:10.702266	f	Estado del pedido #3 actualizado a LISTO_PARA_RECOJO.	pedido	1
25	2026-06-04 09:36:21.098328	f	Estado del pedido #1 actualizado a EN_PROCESO.	pedido	1
26	2026-06-04 09:51:49.987516	f	Estado del pedido #7 actualizado a ENTREGADO.	pedido	1
27	2026-06-04 09:51:56.104899	f	Estado del pedido #3 actualizado a PENDIENTE.	pedido	1
28	2026-06-04 09:53:00.312567	f	Estado del pedido #3 actualizado a ENTREGADO.	pedido	1
29	2026-06-04 09:53:18.862058	f	Estado del pedido #1 actualizado a ENTREGADO.	pedido	1
30	2026-06-04 09:53:38.219897	f	Estado del pedido #1 actualizado a EN_PROCESO.	pedido	1
31	2026-06-04 09:54:29.702157	f	Estado del pedido #1 actualizado a ENTREGADO.	pedido	1
32	2026-06-05 16:17:53.018688	f	Nuevo pedido web creado (ID #9).	pedido	1
33	2026-06-05 16:17:53.328865	f	Pago confirmado para el pedido #9.	pago	1
34	2026-06-05 16:17:53.62491	f	Pedido Fast Lane #9 registrado. Código de recojo: 53DF2FA5	recojo	1
36	2026-06-05 18:58:22.605129	t	Pago confirmado para el pedido #10.	pago	1
35	2026-06-05 18:58:22.424903	t	Nuevo pedido web creado (ID #10).	pedido	1
37	2026-06-05 21:24:40.160909	f	Estado del pedido #5 actualizado a PENDIENTE.	pedido	1
38	2026-06-05 21:24:47.379219	f	Estado del pedido #5 actualizado a PENDIENTE.	pedido	1
39	2026-06-05 21:24:54.273712	f	Estado del pedido #4 actualizado a EN_PROCESO.	pedido	1
40	2026-06-05 21:24:57.785086	f	Estado del pedido #4 actualizado a EN_CAMINO.	pedido	1
41	2026-06-05 21:25:05.653937	f	Estado del pedido #5 actualizado a EN_PROCESO.	pedido	1
24	2026-06-04 09:36:16.441444	t	Estado del pedido #2 actualizado a ENTREGADO.	pedido	1
42	2026-06-08 11:32:11.129794	f	Nueva venta presencial registrada (ID #11).	pedido	1
43	2026-06-08 11:32:11.219902	f	Pago confirmado para la venta #11.	pago	1
44	2026-06-08 11:32:32.415515	f	Nueva venta presencial registrada (ID #12).	pedido	1
45	2026-06-08 11:32:32.499381	f	Pago confirmado para la venta #12.	pago	1
46	2026-06-08 11:38:26.210653	f	Nueva venta presencial registrada (ID #13).	pedido	1
47	2026-06-08 11:38:26.298111	f	Pago confirmado para la venta #13.	pago	1
48	2026-06-08 11:47:37.06219	f	Nueva venta presencial registrada (ID #14).	pedido	1
49	2026-06-08 11:47:37.156424	f	Pago confirmado para la venta #14.	pago	1
50	2026-06-08 20:28:48.414873	f	Stock bajo detectado para Agua San Luis Sin Gas Botella 7 L (restante: 5).	stock	1
51	2026-06-08 20:28:49.605908	f	Nuevo pedido web creado (ID #15).	pedido	1
52	2026-06-08 20:28:49.80976	f	Pago confirmado para el pedido #15.	pago	1
53	2026-06-08 20:28:50.00634	f	Pedido Fast Lane #15 registrado. Código de recojo: 7960FDAD	recojo	1
54	2026-06-08 20:34:40.794642	f	Stock bajo detectado para Agua San Luis Sin Gas Botella 7 L (restante: 1).	stock	1
55	2026-06-08 20:34:41.545415	f	Nuevo pedido web creado (ID #16).	pedido	1
56	2026-06-08 20:34:41.731791	f	Pago confirmado para el pedido #16.	pago	1
57	2026-06-08 20:39:09.491736	f	Nuevo pedido web creado (ID #17).	pedido	1
58	2026-06-08 20:39:09.673703	f	Pago confirmado para el pedido #17.	pago	1
59	2026-06-08 20:39:09.860443	f	Pedido Fast Lane #17 registrado. Código de recojo: C440FB27	recojo	1
60	2026-06-08 20:47:21.437691	f	Nuevo pedido web creado (ID #18).	pedido	1
61	2026-06-08 20:47:21.635758	f	Pago confirmado para el pedido #18.	pago	1
62	2026-06-08 20:47:21.822456	f	Pedido Fast Lane #18 registrado. Código de recojo: A0E63A9A	recojo	1
63	2026-06-08 20:51:11.924093	f	Nuevo pedido web creado (ID #19).	pedido	1
64	2026-06-08 20:51:12.115853	f	Pago confirmado para el pedido #19.	pago	1
65	2026-06-08 20:52:28.739095	f	Stock bajo detectado para Pringles Original (restante: 4).	stock	1
66	2026-06-08 20:52:29.274066	f	Stock bajo detectado para Mini Chips - Chips Ahoy! (restante: 1).	stock	1
67	2026-06-08 20:52:31.313813	f	Nuevo pedido web creado (ID #20).	pedido	1
68	2026-06-08 20:52:31.623703	f	Pago confirmado para el pedido #20.	pago	1
69	2026-06-08 20:52:31.929349	f	Pedido Fast Lane #20 registrado. Código de recojo: 23AD482D	recojo	1
70	2026-06-08 21:44:40.128711	f	Estado del pedido #15 actualizado a EN_PROCESO.	pedido	1
71	2026-06-08 21:55:22.151074	f	Estado del pedido #15 actualizado a LISTO_PARA_RECOJO.	pedido	1
72	2026-06-08 21:55:26.345936	f	Estado del pedido #16 actualizado a EN_PROCESO.	pedido	1
73	2026-06-08 21:55:29.42662	f	Estado del pedido #17 actualizado a EN_PROCESO.	pedido	1
74	2026-06-08 21:55:31.965056	f	Estado del pedido #18 actualizado a EN_PROCESO.	pedido	1
75	2026-06-08 21:55:34.22477	f	Estado del pedido #19 actualizado a EN_PROCESO.	pedido	1
76	2026-06-08 21:55:48.401126	f	Estado del pedido #15 actualizado a ENTREGADO.	pedido	1
77	2026-06-08 21:56:22.839405	f	Estado del pedido #5 actualizado a ENTREGADO.	pedido	1
78	2026-06-08 21:56:29.092542	f	Estado del pedido #8 actualizado a ENTREGADO.	pedido	1
79	2026-06-08 21:56:31.829173	f	Estado del pedido #9 actualizado a ENTREGADO.	pedido	1
80	2026-06-08 21:56:44.137444	f	Estado del pedido #10 actualizado a ENTREGADO.	pedido	1
81	2026-06-08 21:56:58.505557	f	Estado del pedido #17 actualizado a ENTREGADO.	pedido	1
82	2026-06-08 21:57:30.570159	f	Estado del pedido #19 actualizado a EN_CAMINO.	pedido	1
83	2026-06-08 21:57:44.880938	f	Estado del pedido #20 actualizado a EN_PROCESO.	pedido	1
86	2026-06-08 21:58:02.630377	f	Estado del pedido #20 actualizado a LISTO_PARA_RECOJO.	pedido	1
87	2026-06-08 21:58:44.145452	f	Estado del pedido #16 actualizado a ENTREGADO.	pedido	1
89	2026-06-08 21:58:49.559321	f	Estado del pedido #20 actualizado a ENTREGADO.	pedido	1
90	2026-06-08 21:58:52.539305	f	Estado del pedido #19 actualizado a ENTREGADO.	pedido	1
91	2026-06-08 22:05:14.362449	f	Nuevo pedido web creado (ID #21).	pedido	1
92	2026-06-08 22:05:14.628531	f	Pago confirmado para el pedido #21.	pago	1
93	2026-06-08 22:05:14.904786	f	Pedido Fast Lane #21 registrado. Código de recojo: 22E4CE58	recojo	1
84	2026-06-08 21:57:50.665379	f	Estado del pedido #16 actualizado a EN_CAMINO.	pedido	1
85	2026-06-08 21:57:53.475547	f	Estado del pedido #18 actualizado a LISTO_PARA_RECOJO.	pedido	1
88	2026-06-08 21:58:46.832729	f	Estado del pedido #18 actualizado a ENTREGADO.	pedido	1
94	2026-06-08 23:22:42.247778	f	Nuevo pedido web creado (ID #22).	pedido	1
95	2026-06-08 23:22:42.425009	f	Pago confirmado para el pedido #22.	pago	1
96	2026-06-08 23:22:42.603452	f	Pedido Fast Lane #22 registrado. Código de recojo: F0B9C616	recojo	1
97	2026-06-08 23:23:01.573428	f	Estado del pedido #21 actualizado a EN_PROCESO.	pedido	1
98	2026-06-09 00:57:43.462803	f	Nueva venta presencial registrada (ID #23).	pedido	1
99	2026-06-09 00:57:43.551018	f	Pago confirmado para la venta #23.	pago	1
100	2026-06-09 01:26:01.632229	f	Nueva venta presencial registrada (ID #24).	pedido	1
101	2026-06-09 01:26:01.72091	f	Pago confirmado para la venta #24.	pago	1
102	2026-06-09 09:14:37.764556	f	Nueva venta presencial registrada (ID #25).	pedido	1
103	2026-06-09 09:14:37.852282	f	Pago confirmado para la venta #25.	pago	1
104	2026-06-10 09:18:07.36788	f	Nuevo pedido web creado (ID #26).	pedido	1
105	2026-06-10 09:18:07.625797	f	Pago confirmado para el pedido #26.	pago	1
106	2026-06-10 09:19:45.006802	f	Estado del pedido #26 actualizado a EN_PROCESO.	pedido	1
107	2026-06-10 09:19:56.375297	f	Estado del pedido #26 actualizado a EN_CAMINO.	pedido	1
108	2026-06-10 09:20:02.902043	f	Estado del pedido #26 actualizado a ENTREGADO.	pedido	1
109	2026-06-10 10:03:49.176922	f	Nueva venta presencial registrada (ID #27).	pedido	1
110	2026-06-10 10:03:49.269885	f	Pago confirmado para la venta #27.	pago	1
111	2026-06-10 17:16:45.291006	f	Stock bajo detectado para Conserva Durazno Arica (restante: 5).	stock	1
112	2026-06-10 17:16:50.237214	f	Nuevo pedido web creado (ID #28).	pedido	1
113	2026-06-10 17:16:50.598154	f	Pago confirmado para el pedido #28.	pago	1
114	2026-06-10 17:16:50.959058	f	Pedido Fast Lane #28 registrado. Código de recojo: 3E36B917	recojo	1
115	2026-06-10 17:27:55.315081	f	Stock bajo detectado para Gaseosa Coca-Cola Sin Azúcar 1.5 L (restante: 1).	stock	1
116	2026-06-10 17:27:56.025826	f	Stock bajo detectado para Agua San Luis Sin Gas Botella 7 L (restante: 0).	stock	1
117	2026-06-10 17:27:57.273206	f	Nuevo pedido web creado (ID #29).	pedido	1
118	2026-06-10 17:27:57.629134	f	Pago confirmado para el pedido #29.	pago	1
119	2026-06-10 18:12:59.842962	f	Stock bajo detectado para Gaseosa Coca-Cola Sin Azúcar 1.5 L (restante: 0).	stock	1
120	2026-06-10 18:13:02.537567	f	Nuevo pedido web creado (ID #30).	pedido	1
121	2026-06-10 18:13:02.89471	f	Pago confirmado para el pedido #30.	pago	1
122	2026-06-10 18:13:03.251637	f	Pedido Fast Lane #30 registrado. Código de recojo: FDF3FA76	recojo	1
123	2026-06-10 18:15:13.799547	f	Nuevo pedido web creado (ID #31).	pedido	1
124	2026-06-10 18:15:14.157844	f	Pago confirmado para el pedido #31.	pago	1
125	2026-06-10 18:15:14.516418	f	Pedido Fast Lane #31 registrado. Código de recojo: D01E0756	recojo	1
126	2026-06-10 17:34:41.946486	f	Nuevo pedido web creado (ID #32).	pedido	1
127	2026-06-10 17:34:42.126865	f	Pago confirmado para el pedido #32.	pago	1
128	2026-06-10 17:34:42.305614	f	Pedido Fast Lane #32 registrado. Código de recojo: C3362845	recojo	1
129	2026-06-10 17:36:14.436596	f	Nuevo pedido web creado (ID #33).	pedido	1
130	2026-06-10 17:36:14.612832	f	Pago confirmado para el pedido #33.	pago	1
131	2026-06-10 17:36:14.790586	f	Pedido Fast Lane #33 registrado. Código de recojo: 26F6A45D	recojo	1
132	2026-06-10 17:37:14.242438	f	Nuevo pedido web creado (ID #34).	pedido	1
133	2026-06-10 17:37:14.508283	f	Pago confirmado para el pedido #34.	pago	1
134	2026-06-10 17:37:14.771358	f	Pedido Fast Lane #34 registrado. Código de recojo: 8F8430D6	recojo	1
135	2026-06-10 17:45:01.832392	f	Stock bajo detectado para Mini Chips - Chips Ahoy! (restante: 0).	stock	1
136	2026-06-10 17:45:03.892241	f	Nuevo pedido web creado (ID #35).	pedido	1
137	2026-06-10 17:45:04.070714	f	Pago confirmado para el pedido #35.	pago	1
138	2026-06-10 17:45:04.250519	f	Pedido Fast Lane #35 registrado. Código de recojo: 3FFDBAC3	recojo	1
139	2026-06-10 17:52:17.291964	f	Nuevo pedido web creado (ID #36).	pedido	1
140	2026-06-10 17:52:17.559238	f	Pago confirmado para el pedido #36.	pago	1
141	2026-06-10 17:52:17.828268	f	Pedido Fast Lane #36 registrado. Código de recojo: 9156516D	recojo	1
142	2026-06-10 18:14:47.259234	f	Stock bajo detectado para Sprite 3L (restante: 0).	stock	1
143	2026-06-10 18:14:47.638828	f	Stock bajo detectado para Chocolate Trianguilo (restante: 0).	stock	1
144	2026-06-10 18:14:47.987393	f	Stock bajo detectado para Pringles Original (restante: 0).	stock	1
145	2026-06-10 18:14:48.356489	f	Stock bajo detectado para Conserva Durazno Arica (restante: 0).	stock	1
146	2026-06-10 18:14:49.207111	f	Nuevo pedido web creado (ID #37).	pedido	1
147	2026-06-10 18:14:49.378619	f	Pago confirmado para el pedido #37.	pago	1
148	2026-06-10 18:21:30.175978	f	Estado del pedido #28 actualizado a ENTREGADO.	pedido	1
149	2026-06-10 18:21:33.173778	f	Estado del pedido #30 actualizado a ENTREGADO.	pedido	1
150	2026-06-10 18:21:35.989323	f	Estado del pedido #36 actualizado a ENTREGADO.	pedido	1
151	2026-06-10 18:21:36.979892	f	Estado del pedido #34 actualizado a ENTREGADO.	pedido	1
152	2026-06-10 18:21:39.920018	f	Estado del pedido #35 actualizado a ENTREGADO.	pedido	1
153	2026-06-10 18:21:43.836361	f	Estado del pedido #33 actualizado a ENTREGADO.	pedido	1
154	2026-06-10 18:21:44.521992	f	Estado del pedido #32 actualizado a ENTREGADO.	pedido	1
155	2026-06-10 18:21:49.161469	f	Estado del pedido #31 actualizado a ENTREGADO.	pedido	1
156	2026-06-10 18:21:52.797916	f	Estado del pedido #29 actualizado a ENTREGADO.	pedido	1
157	2026-06-10 18:21:55.66632	f	Estado del pedido #21 actualizado a ENTREGADO.	pedido	1
158	2026-06-10 18:21:58.478925	f	Estado del pedido #22 actualizado a ENTREGADO.	pedido	1
159	2026-06-10 18:22:12.856045	f	Nuevo pedido web creado (ID #38).	pedido	1
160	2026-06-10 18:22:13.122872	f	Pago confirmado para el pedido #38.	pago	1
161	2026-06-10 18:22:13.532925	f	Pedido Fast Lane #38 registrado. Código de recojo: D637AD86	recojo	1
162	2026-06-10 18:23:06.55677	f	Nuevo pedido web creado (ID #39).	pedido	1
163	2026-06-10 18:23:06.952929	f	Pago confirmado para el pedido #39.	pago	1
164	2026-06-11 00:05:11.875754	f	Nueva venta presencial registrada (ID #40).	pedido	1
165	2026-06-11 00:05:11.96343	f	Pago confirmado para la venta #40.	pago	1
166	2026-06-11 08:35:16.947959	f	Nuevo pedido web creado (ID #41).	pedido	1
167	2026-06-11 08:35:17.122658	f	Pago confirmado para el pedido #41.	pago	1
168	2026-06-11 08:35:17.296697	f	Pedido Fast Lane #41 registrado. Código de recojo: 63EFA7A4	recojo	1
169	2026-06-11 08:37:05.906349	f	Estado del pedido #41 actualizado a EN_PROCESO.	pedido	1
170	2026-06-11 08:48:07.626751	f	Nuevo pedido web creado (ID #42).	pedido	1
171	2026-06-11 08:48:07.808731	f	Pago confirmado para el pedido #42.	pago	1
172	2026-06-11 09:32:09.800181	f	Nueva venta presencial registrada (ID #43).	pedido	1
173	2026-06-11 09:32:09.893541	f	Pago confirmado para la venta #43.	pago	1
174	2026-06-11 09:34:38.949928	f	Nueva venta presencial registrada (ID #44).	pedido	1
175	2026-06-11 09:34:39.040493	f	Pago confirmado para la venta #44.	pago	1
176	2026-06-11 10:26:51.323202	f	Nuevo pedido web creado (ID #45).	pedido	1
177	2026-06-11 10:26:51.495828	f	Pago confirmado para el pedido #45.	pago	1
178	2026-06-11 10:26:51.671426	f	Pedido Fast Lane #45 registrado. Código de recojo: 3EE4B8F3	recojo	1
179	2026-06-11 10:56:49.506078	f	Nuevo pedido web creado (ID #46).	pedido	1
180	2026-06-11 10:56:49.691359	f	Pago confirmado para el pedido #46.	pago	1
181	2026-06-11 10:56:49.87882	f	Pedido Fast Lane #46 registrado. Código de recojo: B8241095	recojo	1
182	2026-06-11 11:01:52.415228	f	Nueva venta presencial registrada (ID #47).	pedido	1
183	2026-06-11 11:01:52.506573	f	Pago confirmado para la venta #47.	pago	1
184	2026-06-11 16:11:50.635897	f	Nuevo pedido web creado (ID #48).	pedido	1
185	2026-06-11 16:11:50.990853	f	Pago confirmado para el pedido #48.	pago	1
186	2026-06-11 16:11:51.344971	f	Pedido Fast Lane #48 registrado. Código de recojo: AFB8E76E	recojo	1
187	2026-06-11 11:12:42.009602	f	Estado del pedido #48 actualizado a EN_PROCESO.	pedido	1
188	2026-06-11 11:12:58.257749	f	Estado del pedido #48 actualizado a LISTO_PARA_RECOJO.	pedido	1
189	2026-06-11 11:13:08.627915	f	Estado del pedido #48 actualizado a ENTREGADO.	pedido	1
190	2026-06-19 00:50:40.674277	f	Nuevo pedido web creado (ID #49).	pedido	1
191	2026-06-19 00:50:41.049638	f	Pago confirmado para el pedido #49.	pago	1
192	2026-06-19 00:50:41.426761	t	Pedido Fast Lane #49 registrado. Código de recojo: C0430CFC	recojo	1
\.


--
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ventas" ("id", "canal", "codigo_recojo", "costo_envio", "direccion_entrega", "direccion_fiscal", "dni", "email_comprobante", "estado_pago", "estado_pedido", "fecha", "igv", "metodo_pago", "nombre_comprobante", "razon_social", "ruc", "subtotal", "tipo_comprobante", "tipo_entrega", "total", "cliente_id", "usuario_id") FROM stdin;
25	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-09	0.2	EFECTIVO	\N	\N	\N	1.5	TICKET	PRESENCIAL	1.7	\N	1
6	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-03	0.62	EFECTIVO	\N	\N	\N	4.8	TICKET	PRESENCIAL	5.42	\N	7
2	WEB	\N	8	Comas av. Central	Direccion 1		x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-03	4.55	TARJETA		Empresa 1	12345678911	35	FACTURA	DELIVERY	47.55	4	\N
26	WEB	\N	0	Av. Alfredo Mendiola 6377, Los Olivos 15304, Peru	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-10	55.52	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	427.1	BOLETA	DELIVERY	482.62	4	\N
7	WEB	\N	8	limasdfsdfsdfgwfwef		56516516	csdvdsv@dsvcds.com	APROBADO	ENTREGADO	2026-06-04	1.95	TRANSFERENCIA	rythrh			15	BOLETA	DELIVERY	24.95	4	\N
27	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-10	2.3	EFECTIVO	\N	\N	\N	17.7	TICKET	PRESENCIAL	20	\N	1
3	WEB	7F6E685D	0	\N		11232323	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-03	1.48	YAPE	Juana Ortega de la Cruz			11.4	BOLETA	FAST_LANE	12.88	4	\N
15	WEB	7960FDAD	0	\N	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-08	21.65	TRANSFERENCIA	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	166.56	BOLETA	FAST_LANE	188.21	4	\N
5	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-03	0.85	EFECTIVO	\N	\N	\N	6.5	TICKET	PRESENCIAL	7.35	\N	1
1	WEB	4C07CC79	0	\N		12345678	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-03	7.31	YAPE	Pedro Gonzales Torres			56.2	BOLETA	FAST_LANE	63.51	4	\N
8	WEB	\N	8	limaa	av. huanuco		dapuglianini@gmail.com	APROBADO	ENTREGADO	2026-06-04	4.85	YAPE	Empresa Gloria	Empresa Gloria	95874562314	37.3	FACTURA	DELIVERY	50.15	8	\N
9	WEB	53DF2FA5	0	\N		72225222	chris@gmail.com	APROBADO	ENTREGADO	2026-06-05	0.77	TRANSFERENCIA	Chris Perez			5.9	BOLETA	FAST_LANE	6.67	9	\N
4	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	EN_CAMINO	2026-06-03	0.46	EFECTIVO	\N	\N	\N	3.5	TICKET	PRESENCIAL	3.96	\N	1
16	WEB	\N	8	Av. Alfredo Mendiola 6377, Los Olivos 15304, Peru	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-08	6.9	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	53.06	BOLETA	DELIVERY	67.96	4	\N
11	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-08	0.49	EFECTIVO	\N	\N	\N	3.8	TICKET	PRESENCIAL	4.29	\N	1
12	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-08	0.59	EFECTIVO	\N	\N	\N	4.5	TICKET	PRESENCIAL	5.09	\N	1
13	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-08	2.07	EFECTIVO	\N	\N	\N	15.9	TICKET	PRESENCIAL	17.97	\N	1
14	PRESENCIAL	\N	0	\N	\N	33333333	\N	APROBADO	ENTREGADO	2026-06-08	6.11	EFECTIVO	Juan	\N	\N	47	BOLETA	PRESENCIAL	53.11	\N	1
10	WEB	\N	8	Lima	Lima	07529143	wearydiegor@gmail.com	APROBADO	ENTREGADO	2026-06-05	0.77	TARJETA	Juan Espinoza			5.9	BOLETA	DELIVERY	14.67	10	\N
17	WEB	C440FB27	0	\N	CAL. NATALIO SANCHEZ NRO. 125 URB. SANTA BEATRIZ LIMA LIMA LIMA	\N	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-08	2.38	TARJETA	\N	UNIVERSIDAD TECNOLOGICA DEL PERU S.A.C. O UTP S.A.C.	20462509236	18.3	FACTURA	FAST_LANE	20.68	4	\N
18	WEB	A0E63A9A	0	\N	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-08	6.32	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	48.59	BOLETA	FAST_LANE	54.91	4	\N
20	WEB	23AD482D	0	\N	JR. WASHINGTON NRO. 1894 LIMA LIMA LIMA	\N	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-08	6.38	TARJETA	\N	OFICINA NACIONAL DE PROCESOS ELECTORALES	20291973851	49.1	FACTURA	FAST_LANE	55.48	4	\N
19	WEB	\N	0	Av. Alfredo Mendiola 6377, Los Olivos 15304, Peru	AV. CARLOS VILLARAN NRO. 140 URB. SANTA CATALINA LIMA LIMA LA VICTORIA	\N	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-08	13.09	YAPE	\N	BANCO INTERNACIONAL DEL PERU-INTERBANK	20100053455	100.7	FACTURA	DELIVERY	113.79	4	\N
22	WEB	F0B9C616	0	\N	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-08	17.45	TRANSFERENCIA	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	134.2	BOLETA	FAST_LANE	151.65	4	\N
23	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-09	1.98	EFECTIVO	\N	\N	\N	15.2	TICKET	PRESENCIAL	17.18	\N	1
24	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-09	2.65	EFECTIVO	\N	\N	\N	20.4	TICKET	PRESENCIAL	23.05	\N	1
37	WEB	\N	0	Av. de las Artes Sur 260, San Borja 15036, Peru	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	PENDIENTE	2026-06-10	14.12	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	108.6	BOLETA	DELIVERY	122.72	4	\N
30	WEB	FDF3FA76	0	\N	Jr. Matucana, Villa María del Triunfo 15817, Peru	\N	dapuglianini@gmail.com	APROBADO	ENTREGADO	2026-06-10	3.68	TARJETA	\N	danni	25253153132	28.3	FACTURA	FAST_LANE	31.98	8	\N
36	WEB	9156516D	0	\N	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-10	61.61	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	473.9	BOLETA	FAST_LANE	535.51	4	\N
34	WEB	8F8430D6	0	\N	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-10	2.77	TARJETA	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	21.3	BOLETA	FAST_LANE	24.07	4	\N
35	WEB	3FFDBAC3	0	\N	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-10	5.01	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	38.5	BOLETA	FAST_LANE	43.51	4	\N
33	WEB	26F6A45D	0	\N	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-10	13.09	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	100.7	BOLETA	FAST_LANE	113.79	4	\N
32	WEB	C3362845	0	\N	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-10	16.13	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	124.1	BOLETA	FAST_LANE	140.23	4	\N
31	WEB	D01E0756	0	\N	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-10	0.68	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	5.2	BOLETA	FAST_LANE	5.88	4	\N
29	WEB	\N	8	Jr. Matucana, Villa María del Triunfo 15817, Peru	Jr. Matucana, Villa María del Triunfo 15817, Peru	\N	dapuglianini@gmail.com	APROBADO	ENTREGADO	2026-06-10	5.48	TRANSFERENCIA	\N	danni	65646546845	42.19	FACTURA	DELIVERY	55.67	8	\N
21	WEB	22E4CE58	0	\N	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	ENTREGADO	2026-06-08	18.49	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	142.2	BOLETA	FAST_LANE	160.69	4	\N
28	WEB	3E36B917	0	\N	\N	78945612	dapuglianini@gmail.com	APROBADO	ENTREGADO	2026-06-10	15.52	YAPE	EDITH GABRIELA CRISOSTOMO AGUILAR	\N	\N	119.4	BOLETA	FAST_LANE	134.92	8	\N
38	WEB	D637AD86	0	\N	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	PENDIENTE	2026-06-10	1.55	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	11.9	BOLETA	FAST_LANE	13.45	4	\N
39	WEB	\N	8	Av. de las Artes Sur 260, San Borja 15036, Peru	\N	77539383	x.userprivate.2023@gmail.com	APROBADO	PENDIENTE	2026-06-10	11.43	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	87.89	BOLETA	DELIVERY	107.32	4	\N
40	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-11	4.49	EFECTIVO	\N	\N	\N	34.5	TICKET	PRESENCIAL	38.99	\N	1
41	WEB	63EFA7A4	0	\N	\N	77539383	lazzercr99@gmail.com	APROBADO	EN_PROCESO	2026-06-11	4.8	YAPE	ADILSON ALDAIR CARDEÑA CUSI	\N	\N	36.9	BOLETA	FAST_LANE	41.7	4	\N
42	WEB	\N	8	Av. Carlos Villarán 140, La Victoria 15034, Peru	AV. CARLOS VILLARAN NRO. 140 URB. SANTA CATALINA LIMA LIMA LA VICTORIA	\N	lazercr99@gmail.com	APROBADO	PENDIENTE	2026-06-11	1.55	YAPE	\N	BANCO INTERNACIONAL DEL PERU-INTERBANK	20100053455	11.9	FACTURA	DELIVERY	21.45	13	\N
43	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-11	0.98	EFECTIVO	\N	\N	\N	7.5	TICKET	PRESENCIAL	8.48	\N	1
44	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-11	2.54	EFECTIVO	\N	\N	\N	19.5	TICKET	PRESENCIAL	22.04	\N	1
45	WEB	3EE4B8F3	0	\N	\N	41424852	dapuglianini@gmail.com	APROBADO	PENDIENTE	2026-06-11	14.09	YAPE	ENZO GUSTAVO GUZMAN ABURTO	\N	\N	108.4	BOLETA	FAST_LANE	122.49	8	\N
46	WEB	B8241095	0	\N	\N	40211225	adilsoncarden04@gmail.com	APROBADO	PENDIENTE	2026-06-11	13.35	YAPE	ANGELICA LUNA MADRID	\N	\N	102.7	BOLETA	FAST_LANE	116.05	14	\N
47	PRESENCIAL	\N	0	\N	\N	\N	\N	APROBADO	ENTREGADO	2026-06-11	1.63	EFECTIVO	\N	\N	\N	12.5	TICKET	PRESENCIAL	14.13	\N	1
48	WEB	AFB8E76E	0	\N	\N	71379139	dapuglianini@gmail.com	APROBADO	ENTREGADO	2026-06-11	5.35	YAPE	CLAUDIA YOLANDA VILLALTA FLORES	\N	\N	41.17	BOLETA	FAST_LANE	46.52	8	\N
49	WEB	C0430CFC	0	\N	\N	60746801	admin@nubixmarket.com	APROBADO	PENDIENTE	2026-06-19	2.89	YAPE	LEONARDO DANIEL CERNA COPAJA	\N	\N	22.2	BOLETA	FAST_LANE	25.09	\N	\N
\.


--
-- Data for Name: pagos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."pagos" ("id", "estado_pago", "fecha_pago", "metodo_pago", "monto", "venta_id") FROM stdin;
1	APROBADO	2026-06-03 14:25:44.480922	YAPE	63.51	1
2	APROBADO	2026-06-03 14:29:34.431492	TARJETA	47.55	2
3	APROBADO	2026-06-03 14:31:59.655837	YAPE	12.88	3
4	APROBADO	2026-06-03 14:39:21.252729	EFECTIVO	3.96	4
5	APROBADO	2026-06-03 15:37:54.184108	EFECTIVO	7.35	5
6	APROBADO	2026-06-03 17:09:54.808516	EFECTIVO	5.42	6
7	APROBADO	2026-06-04 00:04:25.587263	TRANSFERENCIA	24.95	7
8	APROBADO	2026-06-04 09:06:51.079415	YAPE	50.15	8
9	APROBADO	2026-06-05 16:17:52.08786	TRANSFERENCIA	6.67	9
10	APROBADO	2026-06-05 18:58:21.844815	TARJETA	14.67	10
11	APROBADO	2026-06-08 11:32:10.762124	EFECTIVO	4.29	11
12	APROBADO	2026-06-08 11:32:32.074236	EFECTIVO	5.09	12
13	APROBADO	2026-06-08 11:38:25.758094	EFECTIVO	17.97	13
14	APROBADO	2026-06-08 11:47:36.574616	EFECTIVO	53.11	14
15	APROBADO	2026-06-08 20:28:48.551845	TRANSFERENCIA	188.21	15
16	APROBADO	2026-06-08 20:34:40.893151	YAPE	67.96	16
17	APROBADO	2026-06-08 20:39:08.67274	TARJETA	20.68	17
18	APROBADO	2026-06-08 20:47:20.348715	YAPE	54.91	18
19	APROBADO	2026-06-08 20:51:10.318828	YAPE	113.79	19
20	APROBADO	2026-06-08 20:52:29.72174	TARJETA	55.48	20
21	APROBADO	2026-06-08 22:05:12.566858	YAPE	160.69	21
22	APROBADO	2026-06-08 23:22:40.974071	TRANSFERENCIA	151.65	22
23	APROBADO	2026-06-09 00:57:43.096324	EFECTIVO	17.18	23
24	APROBADO	2026-06-09 01:26:01.160453	EFECTIVO	23.05	24
25	APROBADO	2026-06-09 09:14:37.395316	EFECTIVO	1.7	25
26	APROBADO	2026-06-10 09:18:05.940972	YAPE	482.62	26
27	APROBADO	2026-06-10 10:03:48.692918	EFECTIVO	20	27
28	APROBADO	2026-06-10 17:16:48.046021	YAPE	134.92	28
29	APROBADO	2026-06-10 17:27:56.203864	TRANSFERENCIA	55.67	29
30	APROBADO	2026-06-10 18:13:01.09803	TARJETA	31.98	30
31	APROBADO	2026-06-10 18:15:12.724259	YAPE	5.88	31
32	APROBADO	2026-06-10 17:34:39.574017	YAPE	140.23	32
33	APROBADO	2026-06-10 17:36:12.922261	YAPE	113.79	33
34	APROBADO	2026-06-10 17:37:13.440556	TARJETA	24.07	34
35	APROBADO	2026-06-10 17:45:02.456052	YAPE	43.51	35
36	APROBADO	2026-06-10 17:52:15.661817	YAPE	535.51	36
37	APROBADO	2026-06-10 18:14:48.440861	YAPE	122.72	37
38	APROBADO	2026-06-10 18:22:12.049736	YAPE	13.45	38
39	APROBADO	2026-06-10 18:23:03.181464	YAPE	107.32	39
40	APROBADO	2026-06-11 00:05:11.398145	EFECTIVO	38.99	40
41	APROBADO	2026-06-11 08:35:15.888508	YAPE	41.7	41
42	APROBADO	2026-06-11 08:48:07.07855	YAPE	21.45	42
43	APROBADO	2026-06-11 09:32:09.405486	EFECTIVO	8.48	43
44	APROBADO	2026-06-11 09:34:38.308269	EFECTIVO	22.04	44
45	APROBADO	2026-06-11 10:26:50.252063	YAPE	122.49	45
46	APROBADO	2026-06-11 10:56:48.668005	YAPE	116.05	46
47	APROBADO	2026-06-11 11:01:51.960696	EFECTIVO	14.13	47
48	APROBADO	2026-06-11 16:11:48.9911	YAPE	46.52	48
49	APROBADO	2026-06-19 00:50:38.749877	YAPE	25.09	49
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."password_reset_tokens" ("id", "codigo", "fecha_expiracion", "utilizado", "usuario_id") FROM stdin;
1	941492	2026-06-03 17:20:27.996658	t	4
2	360995	2026-06-03 17:52:26.841865	t	4
3	610831	2026-06-04 08:48:22.425811	f	2
4	453423	2026-06-04 08:48:31.967222	f	2
5	793063	2026-06-04 08:51:13.947876	t	8
6	077474	2026-06-08 23:53:31.355147	t	4
7	652495	2026-06-09 00:05:40.941094	t	4
8	339973	2026-06-09 00:12:41.896711	f	4
9	319703	2026-06-09 00:18:31.322586	t	4
10	361573	2026-06-09 00:25:54.713065	t	4
11	720263	2026-06-11 08:38:50.289098	t	4
12	156518	2026-06-11 15:15:50.832124	f	8
13	095886	2026-06-11 15:17:11.757998	f	8
14	221972	2026-06-11 15:24:27.128618	f	8
15	541687	2026-06-11 15:24:27.305075	f	8
16	206645	2026-06-11 15:24:58.160744	f	8
17	940348	2026-06-11 15:26:03.366605	f	8
18	671000	2026-06-11 15:27:10.216217	f	8
19	107049	2026-06-11 10:29:09.065542	f	8
21	786210	2026-06-11 15:31:16.722112	f	8
20	261800	2026-06-11 10:30:25.713412	t	8
22	273714	2026-06-11 15:51:30.331103	f	8
23	620759	2026-06-21 17:09:56.050801	f	10
\.


--
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."permisos" ("id", "created_at", "descripcion", "nombre", "updated_at", "modulo") FROM stdin;
8	2026-06-03 15:02:38.709117	Ver métricas y reportes del panel administrativo	ver:dashboard	2026-06-03 15:02:38.709117	Dashboard
9	2026-06-03 15:02:38.884323	Listar y consultar productos	ver:productos	2026-06-03 15:02:38.884323	Productos
10	2026-06-03 15:02:39.062041	Registrar nuevos productos	crear:productos	2026-06-03 15:02:39.062041	Productos
11	2026-06-03 15:02:39.237682	Modificar productos existentes	editar:productos	2026-06-03 15:02:39.237682	Productos
12	2026-06-03 15:02:39.419803	Eliminar productos del catálogo	eliminar:productos	2026-06-03 15:02:39.419803	Productos
13	2026-06-03 15:02:39.595157	Listar y consultar categorías	ver:categorias	2026-06-03 15:02:39.595157	Categorías
14	2026-06-03 15:02:39.772878	Registrar nuevas categorías	crear:categorias	2026-06-03 15:02:39.772878	Categorías
15	2026-06-03 15:02:39.947063	Modificar categorías existentes	editar:categorias	2026-06-03 15:02:39.947063	Categorías
16	2026-06-03 15:02:40.123797	Eliminar categorías	eliminar:categorias	2026-06-03 15:02:40.123797	Categorías
21	2026-06-03 15:20:06.790456	Listar y consultar proveedores	ver:proveedores	2026-06-03 15:20:06.790456	Proveedores
22	2026-06-03 15:20:06.976935	Registrar nuevos proveedores	crear:proveedores	2026-06-03 15:20:06.976935	Proveedores
23	2026-06-03 15:20:07.155633	Modificar datos de proveedores	editar:proveedores	2026-06-03 15:20:07.155633	Proveedores
24	2026-06-03 15:20:07.332578	Eliminar proveedores del sistema	eliminar:proveedores	2026-06-03 15:20:07.332578	Proveedores
17	2026-06-03 15:02:40.308133	Consultar pedidos y ventas	ver:ventas	2026-06-03 15:02:40.308133	Ventas
25	2026-06-03 15:20:07.601197	Registrar ventas desde el panel administrativo	crear:ventas	2026-06-03 15:20:07.601197	Ventas
26	2026-06-03 15:20:07.777717	Editar datos de ventas y registrar créditos	editar:ventas	2026-06-03 15:20:07.777717	Ventas
19	2026-06-03 15:02:40.658461	Administrar clientes y empleados	gestionar:usuarios	2026-06-03 15:02:40.658461	Seguridad
20	2026-06-03 15:02:40.833606	Asignar permisos a roles del sistema	gestionar:permisos	2026-06-03 15:02:40.833606	Seguridad
27	2026-06-03 15:20:08.139967	Gestionar roles, permisos y políticas de acceso	gestionar:seguridad	2026-06-03 15:20:08.139967	Seguridad
18	2026-06-03 15:02:40.483773	Actualizar el estado logístico de pedidos	actualizar:estado_ventas	2026-06-03 15:33:24.620654	Ventas
\.


--
-- Data for Name: role_permiso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_permiso" ("role_id", "permiso_id") FROM stdin;
4	17
4	18
1	15
1	22
1	20
1	10
1	23
1	26
1	9
1	19
1	17
1	21
1	27
1	8
1	16
1	13
1	14
1	12
1	25
1	24
1	11
1	18
5	17
5	13
5	9
5	25
5	8
3	10
3	9
3	13
3	8
3	14
\.


--
-- Data for Name: venta_detalles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."venta_detalles" ("id", "cantidad", "precio_unitario", "subtotal", "producto_id", "venta_id") FROM stdin;
1	1	15.9	15.9	81	1
2	1	6.5	6.5	49	1
3	1	2.8	2.8	95	1
4	1	12.9	12.9	65	1
5	2	3.8	7.6	16	1
6	1	1.5	1.5	45	1
7	2	4.5	9	85	1
8	1	2.8	2.8	95	2
9	1	3.8	3.8	16	2
10	1	4.5	4.5	85	2
11	1	6.5	6.5	49	2
12	1	1.5	1.5	45	2
13	1	15.9	15.9	81	2
14	1	9.9	9.9	36	3
15	1	1.5	1.5	45	3
16	1	3.5	3.5	6	4
17	1	6.5	6.5	7	5
18	1	4.8	4.8	99	6
19	2	7.5	15	39	7
20	1	5.5	5.5	92	8
21	2	15.9	31.8	81	8
22	1	5.9	5.9	29	9
23	1	5.9	5.9	29	10
24	1	3.8	3.8	57	11
25	1	4.5	4.5	162	12
26	1	4.5	4.5	162	13
27	3	3.8	11.399999999999999	57	13
28	10	3.8	38	57	14
29	2	4.5	9	162	14
30	6	11.9	71.4	5	15
31	3	6	18	6	15
32	4	5.2	20.8	9	15
33	4	7.9	31.6	10	15
34	4	6.19	24.76	7	15
35	4	5.2	20.8	8	16
36	1	7.5	7.5	14	16
37	4	6.19	24.76	7	16
38	1	7.9	7.9	10	17
39	2	5.2	10.4	11	17
40	1	4	4	18	18
41	1	4.9	4.9	25	18
42	1	3.5	3.5	26	18
43	1	8.9	8.9	27	18
44	1	12	12	31	18
45	1	6.79	6.79	30	18
46	1	8.5	8.5	28	18
47	1	12.9	12.9	65	19
48	1	8.5	8.5	67	19
49	1	4.5	4.5	66	19
50	1	5.3	5.3	63	19
51	1	2.2	2.2	68	19
52	1	15.9	15.9	69	19
53	1	3.5	3.5	70	19
54	1	5.9	5.9	71	19
55	1	9.9	9.9	72	19
56	1	18.9	18.9	73	19
57	1	4.7	4.7	74	19
58	1	8.5	8.5	75	19
59	1	4.5	4.5	110	20
60	1	6.9	6.9	111	20
61	1	4	4	112	20
62	1	4.5	4.5	113	20
63	1	2	2	117	20
64	1	3.5	3.5	116	20
65	1	4	4	115	20
66	1	7	7	114	20
67	1	2	2	118	20
68	1	3.5	3.5	119	20
69	1	4.2	4.2	120	20
70	1	3	3	121	20
71	4	4.8	19.2	99	21
72	4	4.8	19.2	99	21
73	1	4.5	4.5	85	21
74	1	4.5	4.5	85	21
75	1	6.5	6.5	49	21
76	1	6.5	6.5	49	21
77	1	15.9	15.9	81	21
78	1	15.9	15.9	81	21
79	1	2.8	2.8	95	21
80	1	2.8	2.8	95	21
81	2	2.2	4.4	45	21
82	2	6	12	39	21
83	6	2	12	154	21
84	4	2	8	117	21
85	4	2	8	117	21
86	8	4.8	38.4	99	22
87	2	4.5	9	85	22
88	2	6.5	13	49	22
89	2	15.9	31.8	81	22
90	2	2.8	5.6	95	22
91	2	2.2	4.4	45	22
92	2	6	12	39	22
93	6	2	12	154	22
94	4	2	8	117	22
95	4	3.8	15.2	57	23
96	3	3.8	11.399999999999999	57	24
97	2	4.5	9	162	24
98	1	1.5	1.5	97	25
99	20	11.9	238	5	26
100	13	6	78	6	26
101	5	6.3	31.5	15	26
102	3	5.2	15.600000000000001	11	26
103	20	3.2	64	17	26
104	3	5.9	17.700000000000003	22	27
105	8	4.8	38.4	99	28
106	2	4.5	9	85	28
107	2	6.5	13	49	28
108	2	15.9	31.8	81	28
109	2	2.8	5.6	95	28
110	2	2.2	4.4	45	28
111	2	6	12	39	28
112	1	5.2	5.2	11	28
113	6	6	36	6	29
114	1	6.19	6.19	7	29
115	1	6	6	6	30
116	1	5.2	5.2	8	30
117	1	11.9	11.9	5	30
118	1	5.2	5.2	11	30
119	1	5.2	5.2	8	31
120	1	4.5	4.5	153	32
121	1	5	5	152	32
122	1	2	2	154	32
123	1	7	7	155	32
124	1	5.5	5.5	159	32
125	1	10	10	158	32
126	1	4.2	4.2	157	32
127	1	2.5	2.5	156	32
128	1	4.5	4.5	162	32
129	1	2.2	2.2	45	32
130	1	6.5	6.5	49	32
131	1	3.2	3.2	48	32
132	1	12.9	12.9	47	32
133	1	7.9	7.9	52	32
134	1	4.2	4.2	53	32
135	1	11.9	11.9	5	32
136	1	5.2	5.2	8	32
137	1	5.2	5.2	9	32
138	1	7.9	7.9	10	32
139	1	5.2	5.2	11	32
140	3	2.2	6.6000000000000005	12	32
141	1	5.3	5.3	63	33
142	1	12.9	12.9	65	33
143	1	4.5	4.5	66	33
144	1	8.5	8.5	67	33
145	1	3.5	3.5	70	33
146	1	5.9	5.9	71	33
147	1	15.9	15.9	69	33
148	1	2.2	2.2	68	33
149	1	8.5	8.5	75	33
150	1	4.7	4.7	74	33
151	1	18.9	18.9	73	33
152	1	9.9	9.9	72	33
153	1	4.9	4.9	25	34
154	1	3.5	3.5	26	34
155	1	8.9	8.9	27	34
156	1	4	4	18	34
157	1	3.6	3.6	126	35
158	1	2.8	2.8	127	35
159	1	3.5	3.5	125	35
160	1	3	3	124	35
161	1	4.2	4.2	120	35
162	1	3	3	121	35
163	1	3.8	3.8	122	35
164	1	3.6	3.6	123	35
165	1	3.5	3.5	119	35
166	1	2	2	118	35
167	1	2	2	117	35
168	1	3.5	3.5	116	35
169	9	5.2	46.800000000000004	8	36
170	8	3.5	28	26	36
171	4	5.3	21.2	63	36
172	4	12.9	51.6	65	36
173	1	4.5	4.5	66	36
174	4	8.5	34	67	36
175	1	9.9	9.9	72	36
176	5	18.9	94.5	73	36
177	6	4.7	28.200000000000003	74	36
178	1	8.5	8.5	75	36
179	7	15.9	111.3	69	36
180	6	5.9	35.400000000000006	71	36
181	8	5.2	41.6	8	37
182	3	5	15	144	37
183	4	7	28	114	37
184	5	4.8	24	99	37
185	1	11.9	11.9	5	38
186	1	4	4	18	39
187	1	4.9	4.9	25	39
188	1	3.5	3.5	26	39
189	1	8.9	8.9	27	39
190	1	12	12	31	39
191	1	6.79	6.79	30	39
192	1	3.5	3.5	29	39
193	1	8.5	8.5	28	39
194	1	3	3	33	39
195	1	4.2	4.2	35	39
196	1	9.9	9.9	36	39
197	1	1.8	1.8	32	39
198	1	3	3	42	39
199	1	3.5	3.5	43	39
200	1	6.4	6.4	44	39
201	1	4	4	41	39
202	3	11.5	34.5	21	40
203	2	11.9	23.8	5	41
204	1	7.9	7.9	10	41
205	1	5.2	5.2	9	41
206	1	11.9	11.9	5	42
207	3	2.5	7.5	166	43
208	2	1.5	3	168	44
209	1	2.5	2.5	167	44
210	1	2.5	2.5	166	44
211	1	11.5	11.5	21	44
212	11	4.5	49.5	85	45
213	3	4.2	12.600000000000001	35	45
214	1	5.2	5.2	9	45
215	1	7.9	7.9	10	45
216	1	5.2	5.2	11	45
217	1	2.2	2.2	12	45
218	2	12.9	25.8	65	45
219	8	4	32	18	46
220	5	11.9	59.5	5	46
221	1	6	6	6	46
222	1	5.2	5.2	9	46
223	4	2.5	10	167	47
224	1	2.5	2.5	119	47
225	3	3.8	11.399999999999999	122	48
226	3	6.19	18.57	7	48
227	1	6.3	6.3	15	48
228	1	4.9	4.9	25	48
229	1	2.2	2.2	45	49
230	1	6	6	39	49
231	3	2	6	154	49
232	4	2	8	117	49
\.


--
-- Data for Name: ventas_entrega; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ventas_entrega" ("id", "codigo_recojo", "direccion", "distrito", "referencia", "tipo_entrega", "venta_id") FROM stdin;
1	4C07CC79	\N	\N	\N	FAST_LANE	1
2	\N	Comas av. Central	Comas	Al frente de la botica	DELIVERY	2
3	7F6E685D	\N	\N	\N	FAST_LANE	3
4	\N	\N	\N	\N	PRESENCIAL	4
5	\N	\N	\N	\N	PRESENCIAL	5
6	\N	\N	\N	\N	PRESENCIAL	6
7	\N	limasdfsdfsdfgwfwef	lima	dvervevv	DELIVERY	7
8	\N	limaa	lima	compra de productos	DELIVERY	8
9	53DF2FA5	\N	\N	\N	FAST_LANE	9
10	\N	Lima	Carabayllo		DELIVERY	10
11	\N	\N	\N	\N	PRESENCIAL	11
12	\N	\N	\N	\N	PRESENCIAL	12
13	\N	\N	\N	\N	PRESENCIAL	13
14	\N	\N	\N	\N	PRESENCIAL	14
15	7960FDAD	\N	\N	\N	FAST_LANE	15
16	\N	Av. Alfredo Mendiola 6377, Los Olivos 15304, Peru	Urb Santa Luisa Etapa 2	Avenida Alfredo Mendiola 6377	DELIVERY	16
17	C440FB27	\N	\N	\N	FAST_LANE	17
18	A0E63A9A	\N	\N	\N	FAST_LANE	18
19	\N	Av. Alfredo Mendiola 6377, Los Olivos 15304, Peru	LA VICTORIA	Avenida Alfredo Mendiola 6377	DELIVERY	19
20	23AD482D	\N	\N	\N	FAST_LANE	20
21	22E4CE58	\N	\N	\N	FAST_LANE	21
22	F0B9C616	\N	\N	\N	FAST_LANE	22
23	\N	\N	\N	\N	PRESENCIAL	23
24	\N	\N	\N	\N	PRESENCIAL	24
25	\N	\N	\N	\N	PRESENCIAL	25
26	\N	Av. Alfredo Mendiola 6377, Los Olivos 15304, Peru	Urb Santa Luisa Etapa 2	Avenida Alfredo Mendiola 6377	DELIVERY	26
27	\N	\N	\N	\N	PRESENCIAL	27
28	3E36B917	\N	\N	\N	FAST_LANE	28
29	\N	Jr. Matucana, Villa María del Triunfo 15817, Peru	Virgen De Lourdes	Jirón Matucana	DELIVERY	29
30	FDF3FA76	\N	\N	\N	FAST_LANE	30
31	D01E0756	\N	\N	\N	FAST_LANE	31
32	C3362845	\N	\N	\N	FAST_LANE	32
33	26F6A45D	\N	\N	\N	FAST_LANE	33
34	8F8430D6	\N	\N	\N	FAST_LANE	34
35	3FFDBAC3	\N	\N	\N	FAST_LANE	35
36	9156516D	\N	\N	\N	FAST_LANE	36
37	\N	Av. de las Artes Sur 260, San Borja 15036, Peru	Urb San Borja	Avenida de las Artes Sur 260	DELIVERY	37
38	D637AD86	\N	\N	\N	FAST_LANE	38
39	\N	Av. de las Artes Sur 260, San Borja 15036, Peru	Urb San Borja	Avenida de las Artes Sur 260	DELIVERY	39
40	\N	\N	\N	\N	PRESENCIAL	40
41	63EFA7A4	\N	\N	\N	FAST_LANE	41
42	\N	Av. Carlos Villarán 140, La Victoria 15034, Peru	LA VICTORIA	Avenida Carlos Villarán 140	DELIVERY	42
43	\N	\N	\N	\N	PRESENCIAL	43
44	\N	\N	\N	\N	PRESENCIAL	44
45	3EE4B8F3	\N	\N	\N	FAST_LANE	45
46	B8241095	\N	\N	\N	FAST_LANE	46
47	\N	\N	\N	\N	PRESENCIAL	47
48	AFB8E76E	\N	\N	\N	FAST_LANE	48
49	C0430CFC	\N	\N	\N	FAST_LANE	49
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: carrito_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."carrito_id_seq"', 11, true);


--
-- Name: carrito_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."carrito_items_id_seq"', 345, true);


--
-- Name: categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."categorias_id_seq"', 19, true);


--
-- Name: compras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."compras_id_seq"', 1, false);


--
-- Name: detalle_compras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."detalle_compras_id_seq"', 1, false);


--
-- Name: favoritos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."favoritos_id_seq"', 343, true);


--
-- Name: notificaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."notificaciones_id_seq"', 192, true);


--
-- Name: pagos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."pagos_id_seq"', 49, true);


--
-- Name: password_reset_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."password_reset_tokens_id_seq"', 23, true);


--
-- Name: permisos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."permisos_id_seq"', 27, true);


--
-- Name: producto_imagenes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."producto_imagenes_id_seq"', 1, false);


--
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."productos_id_seq"', 169, true);


--
-- Name: proveedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."proveedores_id_seq"', 16, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."roles_id_seq"', 5, true);


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."usuario_id_seq"', 14, true);


--
-- Name: venta_detalles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."venta_detalles_id_seq"', 232, true);


--
-- Name: ventas_entrega_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."ventas_entrega_id_seq"', 49, true);


--
-- Name: ventas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."ventas_id_seq"', 49, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict 4onH7qdRfnpkIwupOjDWVoetdkUryc6p5qCQG1YRWpAV4HJzG06g7YF9ReJr1Wh

RESET ALL;
