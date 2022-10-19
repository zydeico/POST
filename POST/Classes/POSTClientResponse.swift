//
//  POSTClientResponse.swift
//  POST
//
//  Created by Daniel Vázquez on 18/10/22.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public struct POSTClientResponse<T> {
    
    public let value: T
    public let response: URLResponse
    public let data: Data
    public let task: URLSessionDataTask
    public let metric: URLSessionTaskMetrics?
    
    public var originalRequest: URLRequest? {
        task.originalRequest
    }
    
    public var statusCode: Int? {
        (response as? HTTPURLResponse)?.statusCode
    }
    
    public init(value: T, response: URLResponse, data: Data, task: URLSessionDataTask, metric: URLSessionTaskMetrics? = nil) {
        self.value = value
        self.response = response
        self.data = data
        self.task = task
        self.metric = metric
    }
    
    public func map<U>(_ closure: (T) throws -> U) rethrows -> POSTClientResponse<U> {
        POSTClientResponse<U>(value: try closure(value), response: response, data: data, task: task, metric: metric)
    }
}

extension POSTClientResponse: @unchecked Sendable where T: Sendable {
    // Do something
}

extension POSTClientResponse where T == URL {
    public var location: URL { value }
}
