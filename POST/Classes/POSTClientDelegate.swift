//
//  POSTClientDelegate.swift
//  POST
//
//  Created by Daniel Vázquez on 17/10/22.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public protocol POSTClientDelegate {
    func client(_ client: POSTClient, willSendRequest request: inout URLRequest) async throws
    func client(_ client: POSTClient, validateResponse response: HTTPURLResponse, data: Data, task: URLSessionTask) throws
    func client(_ client: POSTClient, shouldRetry task: URLSessionTask, error: Error, attempts: Int) async throws -> Bool
    func client<T>(_ client: POSTClient, makeURLForRequest request: POSTClientRequest<T>) throws -> URL?
}

public extension POSTClientDelegate {
    func client(_ client: POSTClient, willSendRequest request: inout URLRequest) async throws {
        // do something....
    }

    func client(_ client: POSTClient, shouldRetry task: URLSessionTask, error: Error, attempts: Int) async throws -> Bool {
        false
    }

    func client(_ client: POSTClient, validateResponse response: HTTPURLResponse, data: Data, task: URLSessionTask) throws {
        guard (200..<300).contains(response.statusCode) else {
            throw POSTClientAPIError.unacceptableStatusCode(response.statusCode)
        }
    }

    func client<T>(_ client: POSTClient, makeURLForRequest request: POSTClientRequest<T>) throws -> URL? {
        nil
    }
}

struct DefaultPOSTClientAPIDelegate: POSTClientDelegate { }
