// Models.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

protocol JSONEncodable {
    func encodeToJSON() -> Any
}

internal enum ErrorResponse : Error {
    case error(Int, Data?, Error)
}

internal enum DownloadException : Error {
    case responseDataMissing
    case responseFailed
    case requestMissing
    case requestMissingPath
    case requestMissingURL
}

internal enum DecodableRequestBuilderError: Error {
    case emptyDataResponse
    case nilHTTPResponse
    case unsuccessfulHTTPStatusCode
    case jsonDecoding(DecodingError)
    case generalError(Error)
}


internal class Response<T> {
    internal let statusCode: Int
    internal let header: [String: String]
    internal let body: T?

    internal init(statusCode: Int, header: [String: String], body: T?) {
        self.statusCode = statusCode
        self.header = header
        self.body = body
    }

    internal convenience init(response: HTTPURLResponse, body: T?) {
        let rawHeader = response.allHeaderFields
        var header = [String:String]()
        for case let (key, value) as (String, String) in rawHeader {
            header[key] = value
        }
        self.init(statusCode: response.statusCode, header: header, body: body)
    }
}
