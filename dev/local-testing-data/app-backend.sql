INSERT INTO atlas_app.location_backup (id, location_type, lat, long, point, ward, district, city, state, country, pincode, address, bound, info, created_at, updated_at) VALUES
	('003d2f36-a455-4625-bfb4-22807fefa1eb', 'POINT', 76.2733, 10, '0101000020E6100000CC7F48BF7D1153400000000000002440', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 15:15:42.112761+00', '2022-04-12 15:15:42.112761+00');
INSERT INTO atlas_app.organization (id, name, short_id, gstin, status, type, domain, verified, enabled, description, mobile_number, mobile_country_code, from_time, to_time, api_key, callback_url, callback_api_key, head_count, info, created_at, updated_at) VALUES
	('70c76e36-f035-46fd-98a7-572dc8934323', '[A] Transporter #1', 'JUSPAY.MOBILITY.PROVIDER.UAT.1', NULL, 'APPROVED', 'PROVIDER', 'MOBILITY', true, true, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8014/v1/7f7896dd-787e-4a0b-8675-e9e6fe93bb8f', NULL, NULL, NULL, '2022-04-12 15:15:42.108805+00', '2022-04-12 15:15:42.108805+00'),
	('1257a139-6039-40b8-8752-96a77311f645', '[A] Transporter #2', 'another-test-cabs', NULL, 'APPROVED', 'PROVIDER', 'MOBILITY', true, true, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8014/v1/e1f37274-f0aa-4bb3-93a0-2476349487b7', NULL, NULL, NULL, '2022-04-12 15:15:42.110209+00', '2022-04-12 15:15:42.110209+00'),
	('e12d9178-4e88-497e-a310-482b6664dc06', 'Juspay Gateway', 'JUSPAY.BG.1', NULL, 'APPROVED', 'GATEWAY', 'MOBILITY', true, true, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8015/v1', NULL, NULL, NULL, '2022-04-12 15:15:42.111077+00', '2022-04-12 15:15:42.111077+00'),
	('239ee68b-0818-4dba-ad31-032fe809cf71', 'NSDL Gateway', 'NSDL.BG.1', NULL, 'APPROVED', 'GATEWAY', 'MOBILITY', true, true, NULL, NULL, NULL, NULL, NULL, NULL, 'https://gateway-1.atlas.nsdl.co.in/v1', NULL, NULL, NULL, '2022-04-12 15:15:42.111961+00', '2022-04-12 15:15:42.111961+00'),
	('71e8c026-aa08-4e58-a6a8-52ac1d90e86d', 'Metro BPP', 'metro-bpp', NULL, 'APPROVED', 'PROVIDER', 'METRO', true, true, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8000', NULL, NULL, NULL, '2022-04-12 15:15:42.153301+00', '2022-04-12 15:15:42.153301+00'),
	('7f7896dd-787e-4a0b-8675-e9e6fe93bb8f', 'Driver-Offer-Provider #1', 'JUSPAY.MOBILITY.PROVIDER.UAT.3', NULL, 'APPROVED', 'PROVIDER', 'MOBILITY', true, true, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8000', NULL, NULL, NULL, '2022-04-12 15:15:42.153301+00', '2022-04-12 15:15:42.153301+00'),
	('7f7896dd-787e-4a0b-8675-c3f6fe93aa9e', 'Driver-Offer-Provider #2', 'JUSPAY.MOBILITY.PROVIDER.UAT.4', NULL, 'APPROVED', 'PROVIDER', 'MOBILITY', true, true, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8000', NULL, NULL, NULL, '2022-04-12 15:15:42.153301+00', '2022-04-12 15:15:42.153301+00');
INSERT INTO atlas_app.person (id, first_name, middle_name, last_name, full_name, role, gender, identifier_type, email, password_hash, mobile_number_encrypted, mobile_number_hash, mobile_country_code, identifier, rating, is_new, udf1, udf2, device_token, description, created_at, updated_at) VALUES
	('ec34eede-5a3e-4a41-89d4-7290a0d7a629', NULL, NULL, NULL, NULL, 'USER', 'UNKNOWN', 'MOBILENUMBER', NULL, NULL, '0.1.0|1|8hdNzNRjeq0j7QRZoKzT2iMjoKkQJzwLoUeOEF9edh1wmRer7NbUaUT3foUI1wG2gZMjpB8vDuUKUDG+aQ==', '\xba0f72d2d550eb699914591dab2eadeb8fc83dd1eda6bde7cc3f68d7138f14fe', '+91', NULL, NULL, true, NULL, NULL, NULL, NULL, '2022-04-12 15:15:42.104639+00', '2022-04-12 15:15:42.104639+00'),
	-- customer support password blueberry
	('5628baed-d1cb-41e0-a731-601816c4ac5a', NULL, NULL, NULL, NULL, 'CUSTOMER_SUPPORT', 'UNKNOWN', 'EMAIL', 'support@local', '\x7b9d52e2d15115a23e56d46b36a1cdb990f8a08b47a52fc72888584d8dca5b0e', NULL, NULL, NULL, 'supportuserid', NULL, true, NULL, NULL, NULL, NULL, '2022-04-12 15:15:42.106629+00', '2022-04-12 15:15:42.106629+00'),
	('003b93df-4f7c-440f-bada-4d46c396d7d0', 'Some', 'Cool', 'User', NULL, 'USER', 'FEMALE', 'MOBILENUMBER', NULL, NULL, '0.1.0|0|XiWzE3GGzRJQIjsQPCQO/X+Nj5Srv1mPM463Q2QlvXeWjo8hzAlJ6wfxYtpDvZr3bzONXitCP57nOH7FWQ==', '\x1604f4cfb781d8f1c9ff024f8d06abc265a2d6954ac59079ea0c11f9f0bc1fa4', '+91', NULL, NULL, false, NULL, NULL, NULL, NULL, '2022-04-12 15:15:42.151585+00', '2022-04-12 15:15:42.151585+00');
INSERT INTO atlas_app.registration_token (id, auth_medium, auth_type, auth_value_hash, token, verified, auth_expiry, token_expiry, attempts, entity_id, entity_type, info, created_at, updated_at) VALUES
	('772453e2-d02b-494a-a4ac-ec1ea0027e18', 'SMS', 'OTP', '3249', 'ea37f941-427a-4085-a7d0-96240f166672', true, 3, 365, 3, 'ec34eede-5a3e-4a41-89d4-7290a0d7a629', 'USER                                ', NULL, '2022-04-12 15:15:42.107604+00', '2022-04-12 15:15:42.107604+00'),
	('003d53e2-d02b-494a-a4ac-ec1ea0027e18', 'SMS', 'OTP', '4321', '003df941-427a-4085-a7d0-96240f166672', true, 3, 365, 3, '003b93df-4f7c-440f-bada-4d46c396d7d0', 'USER                                ', NULL, '2022-04-12 15:15:42.152458+00', '2022-04-12 15:15:42.152458+00');
INSERT INTO atlas_app.search_request_location (id, lat, lon, city, state, country, created_at, updated_at, street, door, building, area_code, area) VALUES
	('003d2f36-a455-4625-bfb4-22807fefa1eb', 76.2733, 10, NULL, NULL, NULL, '2022-04-12 15:15:42.112761+00', '2022-04-12 15:15:42.112761+00', NULL, NULL, NULL, NULL, NULL);
