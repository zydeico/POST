//
//  POSTClientRequest.swift
//  POST
//
//  Created by Daniel Vázquez on 17/10/22.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public struct POSTClientRequest<Response>: @unchecked Sendable {
    
    public var requestMethod: HTTPMethods
    public var url: URL?
    public var query: [String: String]?
    public var body: Encodable?
    public var headers: [String: String]?
    public var id: String?
    
    public init(requestMethod: HTTPMethods = .post, url: URL? = nil, query: [String : String]? = nil, body: Encodable? = nil, headers: [String : String]? = nil, id: String? = nil) {
        self.requestMethod = requestMethod
        self.url = url
        self.query = query
        self.body = body
        self.headers = headers
        self.id = id
    }
}

extension POSTClientRequest where Response == Void {
    public init(requestMethod: HTTPMethods = .post, url: URL? = nil, query: [String : String]? = nil, body: Encodable? = nil, headers: [String : String]? = nil, id: String? = nil) {
        self.requestMethod = requestMethod
        self.url = url
        self.query = query
        self.body = body
        self.headers = headers
        self.id = id
    }
}

public struct HTTPMethods: RawRepresentable, Hashable, ExpressibleByStringLiteral {
    
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public init(stringLiteral value: String) {
        self.rawValue = value
    }
    
    public static let get: HTTPMethods = "GET"
    public static let post: HTTPMethods = "POST"
    public static let patch: HTTPMethods = "PATCH"
    public static let put: HTTPMethods = "PUT"
    public static let delete: HTTPMethods = "DELETE"
    public static let options: HTTPMethods = "OPTIONS"
    public static let head: HTTPMethods = "HEAD"
    public static let trace: HTTPMethods = "TRACE"
}
