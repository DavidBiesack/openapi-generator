note
 description:"[
		OpenAPI Petstore
 		This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
  		The version of the OpenAPI document: 1.0.0
 	    

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"

class
	FAKE_API

inherit

    API_I


feature -- API Access


	create_xml_item (xml_item: XML_ITEM)
			-- creates an XmlItem
			-- this route creates an XmlItem
			-- 
			-- argument: xml_item XmlItem Body (required)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(xml_item)
			l_path := "/fake/create_xml_item"


			if attached {STRING} api_client.select_header_accept (<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/xml", "application/xml; charset=utf-8", "application/xml; charset=utf-16", "text/xml", "text/xml; charset=utf-8", "text/xml; charset=utf-16">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Post", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	fake_outer_boolean_serialize (body: BOOLEAN): detachable BOOLEAN
			-- 
			-- Test serialization of outer boolean types
			-- 
			-- argument: body Input boolean as post body (optional)
			-- 
			-- 
			-- Result BOOLEAN
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/fake/outer/boolean"


			if attached {STRING} api_client.select_header_accept (<<"*/*">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Post", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { BOOLEAN } l_response.data ({ BOOLEAN }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	fake_outer_composite_serialize (body: detachable OUTER_COMPOSITE): detachable OUTER_COMPOSITE
			-- 
			-- Test serialization of object with outer number type
			-- 
			-- argument: body Input composite as post body (optional)
			-- 
			-- 
			-- Result OUTER_COMPOSITE
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/fake/outer/composite"


			if attached {STRING} api_client.select_header_accept (<<"*/*">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Post", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { OUTER_COMPOSITE } l_response.data ({ OUTER_COMPOSITE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	fake_outer_number_serialize (body: REAL_32): detachable REAL_32
			-- 
			-- Test serialization of outer number types
			-- 
			-- argument: body Input number as post body (optional)
			-- 
			-- 
			-- Result REAL_32
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/fake/outer/number"


			if attached {STRING} api_client.select_header_accept (<<"*/*">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Post", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { REAL_32 } l_response.data ({ REAL_32 }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	fake_outer_string_serialize (body: STRING_32): detachable STRING_32
			-- 
			-- Test serialization of outer string types
			-- 
			-- argument: body Input string as post body (optional)
			-- 
			-- 
			-- Result STRING_32
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/fake/outer/string"


			if attached {STRING} api_client.select_header_accept (<<"*/*">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Post", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { STRING_32 } l_response.data ({ STRING_32 }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	test_body_with_file_schema (body: FILE_SCHEMA_TEST_CLASS)
			-- 
			-- For this test, the body for this request much reference a schema named &#x60;File&#x60;.
			-- 
			-- argument: body  (required)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/fake/body-with-file-schema"


			if attached {STRING} api_client.select_header_accept (<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/json">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Put", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	test_body_with_query_params (query: STRING_32; body: USER)
			-- 
			-- 
			-- 
			-- argument: query  (required)
			-- 
			-- argument: body  (required)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/fake/body-with-query-params"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "query", query));


			if attached {STRING} api_client.select_header_accept (<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/json">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Put", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	test_client_model (body: CLIENT): detachable CLIENT
			-- To test \&quot;client\&quot; model
			-- To test \&quot;client\&quot; model
			-- 
			-- argument: body client model (required)
			-- 
			-- 
			-- Result CLIENT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/fake"


			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/json">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Patch", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { CLIENT } l_response.data ({ CLIENT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	test_endpoint_parameters (number: REAL_32; double: REAL_64; pattern_without_delimiter: STRING_32; byte: ARRAY [NATURAL_8]; integer: INTEGER_32; int32: INTEGER_32; int64: INTEGER_64; float: REAL_32; string: STRING_32; binary: FILE; date: DATE; date_time: DATE_TIME; password: STRING; callback: STRING_32)
			-- Fake endpoint for testing various parameters  假端點  偽のエンドポイント  가짜 엔드 포인트
			-- Fake endpoint for testing various parameters  假端點  偽のエンドポイント  가짜 엔드 포인트
			-- 
			-- argument: number None (required)
			-- 
			-- argument: double None (required)
			-- 
			-- argument: pattern_without_delimiter None (required)
			-- 
			-- argument: byte None (required)
			-- 
			-- argument: integer None (optional, default to null)
			-- 
			-- argument: int32 None (optional, default to null)
			-- 
			-- argument: int64 None (optional, default to null)
			-- 
			-- argument: float None (optional, default to null)
			-- 
			-- argument: string None (optional, default to null)
			-- 
			-- argument: binary None (optional, default to null)
			-- 
			-- argument: date None (optional, default to null)
			-- 
			-- argument: date_time None (optional, default to null)
			-- 
			-- argument: password None (optional, default to null)
			-- 
			-- argument: callback None (optional, default to null)
			-- 
			-- 
		require
			number_is_less_or_equal_than: number <= 543.2 
     		number_is_greater_or_equal_than: number >= 32.1 
			double_is_less_or_equal_than: double <= 123.4 
     		double_is_greater_or_equal_than: double >= 67.8 
			integer_is_less_or_equal_than: integer <= 100 
     		integer_is_greater_or_equal_than: integer >= 10 
			int32_is_less_or_equal_than: int32 <= 200 
     		int32_is_greater_or_equal_than: int32 >= 20 
			float_is_less_or_equal_than: float <= 987.6 
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/fake"

			if attached integer as l_integer then
				l_request.add_form(l_integer,"integer");
			end
			if attached int32 as l_int32 then
				l_request.add_form(l_int32,"int32");
			end
			if attached int64 as l_int64 then
				l_request.add_form(l_int64,"int64");
			end
			if attached number as l_number then
				l_request.add_form(l_number,"number");
			end
			if attached float as l_float then
				l_request.add_form(l_float,"float");
			end
			if attached double as l_double then
				l_request.add_form(l_double,"double");
			end
			if attached string as l_string then
				l_request.add_form(l_string,"string");
			end
			if attached pattern_without_delimiter as l_pattern_without_delimiter then
				l_request.add_form(l_pattern_without_delimiter,"pattern_without_delimiter");
			end
			if attached byte as l_byte then
				l_request.add_form(l_byte,"byte");
			end
			if attached binary as l_binary then
				l_request.add_form(l_binary,"binary");
			end
			if attached date as l_date then
				l_request.add_form(l_date,"date");
			end
			if attached date_time as l_date_time then
				l_request.add_form(l_date_time,"dateTime");
			end
			if attached password as l_password then
				l_request.add_form(l_password,"password");
			end
			if attached callback as l_callback then
				l_request.add_form(l_callback,"callback");
			end

			if attached {STRING} api_client.select_header_accept (<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/x-www-form-urlencoded">>),"Content-Type")
			l_request.set_auth_names (<<"http_basic_test">>)
			l_response := api_client.call_api (l_path, "Post", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	test_enum_parameters (enum_header_string_array: detachable LIST [STRING_32]; enum_header_string: STRING_32; enum_query_string_array: detachable LIST [STRING_32]; enum_query_string: STRING_32; enum_query_integer: INTEGER_32; enum_query_double: REAL_64; enum_form_string_array: detachable LIST [STRING_32]; enum_form_string: STRING_32)
			-- To test enum parameters
			-- To test enum parameters
			-- 
			-- argument: enum_header_string_array Header parameter enum test (string array) (optional, default to null)
			-- 
			-- argument: enum_header_string Header parameter enum test (string) (optional, default to -efg)
			-- 
			-- argument: enum_query_string_array Query parameter enum test (string array) (optional, default to null)
			-- 
			-- argument: enum_query_string Query parameter enum test (string) (optional, default to -efg)
			-- 
			-- argument: enum_query_integer Query parameter enum test (double) (optional, default to null)
			-- 
			-- argument: enum_query_double Query parameter enum test (double) (optional, default to null)
			-- 
			-- argument: enum_form_string_array Form parameter enum test (string array) (optional, default to $)
			-- 
			-- argument: enum_form_string Form parameter enum test (string) (optional, default to -efg)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/fake"
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "enum_query_string_array", enum_query_string_array));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "enum_query_string", enum_query_string));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "enum_query_integer", enum_query_integer));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "enum_query_double", enum_query_double));

			if attached enum_header_string_array as l_enum_header_string_array then
				l_request.add_header(l_enum_header_string_array.out,"enum_header_string_array");
			end
			if attached enum_header_string as l_enum_header_string then
				l_request.add_header(l_enum_header_string.out,"enum_header_string");
			end
			if attached enum_form_string_array as l_enum_form_string_array then
				l_request.add_form(l_enum_form_string_array,"enum_form_string_array");
			end
			if attached enum_form_string as l_enum_form_string then
				l_request.add_form(l_enum_form_string,"enum_form_string");
			end

			if attached {STRING} api_client.select_header_accept (<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/x-www-form-urlencoded">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	test_group_parameters (required_string_group: INTEGER_32; required_boolean_group: BOOLEAN; required_int64_group: INTEGER_64; string_group: INTEGER_32; boolean_group: BOOLEAN; int64_group: INTEGER_64)
			-- Fake endpoint to test group parameters (optional)
			-- Fake endpoint to test group parameters (optional)
			-- 
			-- argument: required_string_group Required String in group parameters (required)
			-- 
			-- argument: required_boolean_group Required Boolean in group parameters (required)
			-- 
			-- argument: required_int64_group Required Integer in group parameters (required)
			-- 
			-- argument: string_group String in group parameters (optional, default to null)
			-- 
			-- argument: boolean_group Boolean in group parameters (optional, default to null)
			-- 
			-- argument: int64_group Integer in group parameters (optional, default to null)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/fake"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "required_string_group", required_string_group));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "required_int64_group", required_int64_group));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "string_group", string_group));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "int64_group", int64_group));

			if attached required_boolean_group as l_required_boolean_group then
				l_request.add_header(l_required_boolean_group.out,"required_boolean_group");
			end
			if attached boolean_group as l_boolean_group then
				l_request.add_header(l_boolean_group.out,"boolean_group");
			end

			if attached {STRING} api_client.select_header_accept (<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Delete", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	test_inline_additional_properties (param: STRING_TABLE[STRING_32])
			-- test inline additionalProperties
			-- 
			-- 
			-- argument: param request body (required)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(param)
			l_path := "/fake/inline-additionalProperties"


			if attached {STRING} api_client.select_header_accept (<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/json">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Post", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	test_json_form_data (param: STRING_32; param2: STRING_32)
			-- test json serialization of form data
			-- 
			-- 
			-- argument: param field1 (required)
			-- 
			-- argument: param2 field2 (required)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/fake/jsonFormData"

			if attached param as l_param then
				l_request.add_form(l_param,"param");
			end
			if attached param2 as l_param2 then
				l_request.add_form(l_param2,"param2");
			end

			if attached {STRING} api_client.select_header_accept (<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/x-www-form-urlencoded">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	test_query_parameter_collection_format (pipe: LIST [STRING_32]; ioutil: LIST [STRING_32]; http: LIST [STRING_32]; url: LIST [STRING_32]; context: LIST [STRING_32])
			-- 
			-- To test the collection format in query parameters
			-- 
			-- argument: pipe  (required)
			-- 
			-- argument: ioutil  (required)
			-- 
			-- argument: http  (required)
			-- 
			-- argument: url  (required)
			-- 
			-- argument: context  (required)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/fake/test-query-paramters"
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "pipe", pipe));
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "ioutil", ioutil));
			l_request.fill_query_params(api_client.parameter_to_tuple("ssv", "http", http));
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "url", url));
			l_request.fill_query_params(api_client.parameter_to_tuple("multi", "context", context));


			if attached {STRING} api_client.select_header_accept (<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Put", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	


end
