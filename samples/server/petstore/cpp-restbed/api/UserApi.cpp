/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 4.3.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


#include <corvusoft/restbed/byte.hpp>
#include <corvusoft/restbed/string.hpp>
#include <corvusoft/restbed/settings.hpp>
#include <corvusoft/restbed/request.hpp>

#include "UserApi.h"

namespace org {
namespace openapitools {
namespace server {
namespace api {

using namespace org::openapitools::server::model;

UserApi::UserApi() {
	std::shared_ptr<UserApiUserResource> spUserApiUserResource = std::make_shared<UserApiUserResource>();
	this->publish(spUserApiUserResource);

	std::shared_ptr<UserApiUserCreateWithArrayResource> spUserApiUserCreateWithArrayResource = std::make_shared<UserApiUserCreateWithArrayResource>();
	this->publish(spUserApiUserCreateWithArrayResource);

	std::shared_ptr<UserApiUserCreateWithListResource> spUserApiUserCreateWithListResource = std::make_shared<UserApiUserCreateWithListResource>();
	this->publish(spUserApiUserCreateWithListResource);

	std::shared_ptr<UserApiUserUsernameResource> spUserApiUserUsernameResource = std::make_shared<UserApiUserUsernameResource>();
	this->publish(spUserApiUserUsernameResource);

	std::shared_ptr<UserApiUserLoginResource> spUserApiUserLoginResource = std::make_shared<UserApiUserLoginResource>();
	this->publish(spUserApiUserLoginResource);

	std::shared_ptr<UserApiUserLogoutResource> spUserApiUserLogoutResource = std::make_shared<UserApiUserLogoutResource>();
	this->publish(spUserApiUserLogoutResource);

}

UserApi::~UserApi() {}

void UserApi::startService(int const& port) {
	std::shared_ptr<restbed::Settings> settings = std::make_shared<restbed::Settings>();
	settings->set_port(port);
	settings->set_root("/v2");
	
	this->start(settings);
}

void UserApi::stopService() {
	this->stop();
}

UserApiUserResource::UserApiUserResource()
{
	this->set_path("/user/");
	this->set_method_handler("POST",
		std::bind(&UserApiUserResource::POST_method_handler, this,
			std::placeholders::_1));
}

UserApiUserResource::~UserApiUserResource()
{
}

void UserApiUserResource::set_handler_POST(
	std::function<std::pair<int, std::string>(
		std::shared_ptr<User> const &
	)> handler) {
	handler_POST_ = std::move(handler);
}


void UserApiUserResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
	// Body params are present, therefore we have to fetch them
	int content_length = request->get_header("Content-Length", 0);
	session->fetch(content_length,
		[ this ]( const std::shared_ptr<restbed::Session> session, const restbed::Bytes & body )
		{

			const auto request = session->get_request();
			std::string file = restbed::String::format("%.*s\n", ( int ) body.size( ), body.data( ));
			/**
			 * Get body params or form params here from the file string
			 */




			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			std::string result = "successful operation";

			if (handler_POST_)
			{
				std::tie(status_code, result) = handler_POST_(
					body
				);
			}

			if (status_code == 0) {
				session->close(0, result.empty() ? "successful operation" : std::move(result), { {"Connection", "close"} });
				return;
			}

		});
}



UserApiUserCreateWithArrayResource::UserApiUserCreateWithArrayResource()
{
	this->set_path("/user/createWithArray/");
	this->set_method_handler("POST",
		std::bind(&UserApiUserCreateWithArrayResource::POST_method_handler, this,
			std::placeholders::_1));
}

UserApiUserCreateWithArrayResource::~UserApiUserCreateWithArrayResource()
{
}

void UserApiUserCreateWithArrayResource::set_handler_POST(
	std::function<std::pair<int, std::string>(
		std::vector<std::shared_ptr<User>> const &
	)> handler) {
	handler_POST_ = std::move(handler);
}


void UserApiUserCreateWithArrayResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
	// Body params are present, therefore we have to fetch them
	int content_length = request->get_header("Content-Length", 0);
	session->fetch(content_length,
		[ this ]( const std::shared_ptr<restbed::Session> session, const restbed::Bytes & body )
		{

			const auto request = session->get_request();
			std::string file = restbed::String::format("%.*s\n", ( int ) body.size( ), body.data( ));
			/**
			 * Get body params or form params here from the file string
			 */




			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			std::string result = "successful operation";

			if (handler_POST_)
			{
				std::tie(status_code, result) = handler_POST_(
					body
				);
			}

			if (status_code == 0) {
				session->close(0, result.empty() ? "successful operation" : std::move(result), { {"Connection", "close"} });
				return;
			}

		});
}



UserApiUserCreateWithListResource::UserApiUserCreateWithListResource()
{
	this->set_path("/user/createWithList/");
	this->set_method_handler("POST",
		std::bind(&UserApiUserCreateWithListResource::POST_method_handler, this,
			std::placeholders::_1));
}

UserApiUserCreateWithListResource::~UserApiUserCreateWithListResource()
{
}

void UserApiUserCreateWithListResource::set_handler_POST(
	std::function<std::pair<int, std::string>(
		std::vector<std::shared_ptr<User>> const &
	)> handler) {
	handler_POST_ = std::move(handler);
}


void UserApiUserCreateWithListResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
	// Body params are present, therefore we have to fetch them
	int content_length = request->get_header("Content-Length", 0);
	session->fetch(content_length,
		[ this ]( const std::shared_ptr<restbed::Session> session, const restbed::Bytes & body )
		{

			const auto request = session->get_request();
			std::string file = restbed::String::format("%.*s\n", ( int ) body.size( ), body.data( ));
			/**
			 * Get body params or form params here from the file string
			 */




			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			std::string result = "successful operation";

			if (handler_POST_)
			{
				std::tie(status_code, result) = handler_POST_(
					body
				);
			}

			if (status_code == 0) {
				session->close(0, result.empty() ? "successful operation" : std::move(result), { {"Connection", "close"} });
				return;
			}

		});
}



UserApiUserUsernameResource::UserApiUserUsernameResource()
{
	this->set_path("/user/{username: .*}/");
	this->set_method_handler("DELETE",
		std::bind(&UserApiUserUsernameResource::DELETE_method_handler, this,
			std::placeholders::_1));
	this->set_method_handler("GET",
		std::bind(&UserApiUserUsernameResource::GET_method_handler, this,
			std::placeholders::_1));
	this->set_method_handler("PUT",
		std::bind(&UserApiUserUsernameResource::PUT_method_handler, this,
			std::placeholders::_1));
}

UserApiUserUsernameResource::~UserApiUserUsernameResource()
{
}

void UserApiUserUsernameResource::set_handler_DELETE(
	std::function<std::pair<int, std::string>(
		std::string const &
	)> handler) {
	handler_DELETE_ = std::move(handler);
}

void UserApiUserUsernameResource::set_handler_GET(
	std::function<std::pair<int, std::string>(
		std::string const &
	)> handler) {
	handler_GET_ = std::move(handler);
}
void UserApiUserUsernameResource::set_handler_PUT(
	std::function<std::pair<int, std::string>(
		std::string const &, std::shared_ptr<User> const &
	)> handler) {
	handler_PUT_ = std::move(handler);
}

void UserApiUserUsernameResource::DELETE_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();

			// Getting the path params
			const std::string username = request->get_path_parameter("username", "");



			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			std::string result = "successful operation";

			if (handler_DELETE_)
			{
				std::tie(status_code, result) = handler_DELETE_(
					username
				);
			}

			if (status_code == 400) {
				session->close(400, result.empty() ? "Invalid username supplied" : std::move(result), { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, result.empty() ? "User not found" : std::move(result), { {"Connection", "close"} });
				return;
			}

}

void UserApiUserUsernameResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();

			// Getting the path params
			const std::string username = request->get_path_parameter("username", "");



			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			std::string result = "successful operation";

			if (handler_GET_)
			{
				std::tie(status_code, result) = handler_GET_(
					username
				);
			}

			if (status_code == 200) {
				std::shared_ptr<User> response = NULL;
				session->close(200, result.empty() ? "successful operation" : std::move(result), { {"Connection", "close"} });
				return;
			}
			if (status_code == 400) {
				session->close(400, result.empty() ? "Invalid username supplied" : std::move(result), { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, result.empty() ? "User not found" : std::move(result), { {"Connection", "close"} });
				return;
			}

}
void UserApiUserUsernameResource::PUT_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
	// Body params are present, therefore we have to fetch them
	int content_length = request->get_header("Content-Length", 0);
	session->fetch(content_length,
		[ this ]( const std::shared_ptr<restbed::Session> session, const restbed::Bytes & body )
		{

			const auto request = session->get_request();
			std::string file = restbed::String::format("%.*s\n", ( int ) body.size( ), body.data( ));

			// Getting the path params
			const std::string username = request->get_path_parameter("username", "");



			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			std::string result = "successful operation";

			if (handler_PUT_)
			{
				std::tie(status_code, result) = handler_PUT_(
					username, body
				);
			}

			if (status_code == 400) {
				session->close(400, result.empty() ? "Invalid user supplied" : std::move(result), { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, result.empty() ? "User not found" : std::move(result), { {"Connection", "close"} });
				return;
			}

		});
}


UserApiUserLoginResource::UserApiUserLoginResource()
{
	this->set_path("/user/login/");
	this->set_method_handler("GET",
		std::bind(&UserApiUserLoginResource::GET_method_handler, this,
			std::placeholders::_1));
}

UserApiUserLoginResource::~UserApiUserLoginResource()
{
}

void UserApiUserLoginResource::set_handler_GET(
	std::function<std::pair<int, std::string>(
		std::string const &, std::string const &
	)> handler) {
	handler_GET_ = std::move(handler);
}


void UserApiUserLoginResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();


			// Getting the query params
			const std::string username = request->get_query_parameter("username", "");
			const std::string password = request->get_query_parameter("password", "");


			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			std::string result = "successful operation";

			if (handler_GET_)
			{
				std::tie(status_code, result) = handler_GET_(
					username, password
				);
			}

			if (status_code == 200) {
				// Description: calls per hour allowed by the user
				session->set_header("X-Rate-Limit", ""); // Change second param to your header value
				// Description: date in UTC when toekn expires
				session->set_header("X-Expires-After", ""); // Change second param to your header value
				session->close(200, result.empty() ? "successful operation" : std::move(result), { {"Connection", "close"} });
				return;
			}
			if (status_code == 400) {
				session->close(400, result.empty() ? "Invalid username/password supplied" : std::move(result), { {"Connection", "close"} });
				return;
			}

}



UserApiUserLogoutResource::UserApiUserLogoutResource()
{
	this->set_path("/user/logout/");
	this->set_method_handler("GET",
		std::bind(&UserApiUserLogoutResource::GET_method_handler, this,
			std::placeholders::_1));
}

UserApiUserLogoutResource::~UserApiUserLogoutResource()
{
}

void UserApiUserLogoutResource::set_handler_GET(
	std::function<std::pair<int, std::string>(
		
	)> handler) {
	handler_GET_ = std::move(handler);
}


void UserApiUserLogoutResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();




			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			std::string result = "successful operation";

			if (handler_GET_)
			{
				std::tie(status_code, result) = handler_GET_(
					
				);
			}

			if (status_code == 0) {
				session->close(0, result.empty() ? "successful operation" : std::move(result), { {"Connection", "close"} });
				return;
			}

}




}
}
}
}

