//
// CodableHelper.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public typealias EncodeResult = (data: Data?, error: Error?)

open class CodableHelper {

    private static var customDateFormatter: DateFormatter?
    private static var defaultDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .iso8601)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.dateFormat = Configuration.dateFormat
        return dateFormatter
    }()
    private static var customJSONDecoder: JSONDecoder?
    private static var defaultJSONDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(CodableHelper.dateFormatter)
        return decoder
    }()
    private static var customJSONEncoder: JSONEncoder?
    private static var defaultJSONEncoder: JSONEncoder = {
       let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .formatted(CodableHelper.dateFormatter)
        encoder.outputFormatting = .prettyPrinted
        return encoder
    }()

    public static var dateFormatter: DateFormatter {
        get { return self.customDateFormatter ?? self.defaultDateFormatter }
        set { self.customDateFormatter = newValue }
    }
    public static var jsonDecoder: JSONDecoder {
        get { return self.customJSONDecoder ?? self.defaultJSONDecoder }
        set { self.customJSONDecoder = newValue }
    }
    public static var jsonEncoder: JSONEncoder {
        get { return self.customJSONEncoder ?? self.defaultJSONEncoder }
        set { self.customJSONEncoder = newValue }
    }

    open class func decode<T>(_ type: T.Type, from data: Data) -> (decodableObj: T?, error: Error?) where T : Decodable {
        var returnedDecodable: T? = nil
        var returnedError: Error? = nil

        do {
            returnedDecodable = try self.jsonDecoder.decode(type, from: data)
        } catch {
            returnedError = error
        }

        return (returnedDecodable, returnedError)
    }

    open class func encode<T>(_ value: T) -> EncodeResult where T : Encodable {
        var returnedData: Data?
        var returnedError: Error? = nil

        do {
            returnedData = try self.jsonEncoder.encode(value)
        } catch {
            returnedError = error
        }

        return (returnedData, returnedError)
    }
}