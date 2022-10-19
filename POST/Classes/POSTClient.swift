//
//  POSTClient.swift
//  POST
//
//  Created by Daniel Vázquez on 17/10/22.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public actor POSTClient {
    
    public nonisolated let config: Configuration
    
    public var mainURL: URL?
    
    public init(config: Configuration, mainURL: URL? = nil) {
        self.config = config
        self.mainURL = mainURL
    }
    
    public struct Configuration: @unchecked Sendable {
        
    }
}

public enum POSTClientAPIError: Error, LocalizedError {
    case unacceptableStatusCode(Int)
    public var errorDescription: String? {
        switch self {
        case .unacceptableStatusCode(let statusCode):
            return "Response status code was unacceptable: \(statusCode)."
        }
    }
}
