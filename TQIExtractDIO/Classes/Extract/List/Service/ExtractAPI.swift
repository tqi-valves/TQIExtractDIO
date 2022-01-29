//
//  ExtractAPI.swift
//  TQIExtractDIO
//
//  Created by Victor Freitas on 29/01/22.
//

import VFNetwork

public enum ExtractAPI {
    case transactions
}

extension ExtractAPI: APIBuilder {
    public var path: URLPath {
        .plain("statement")
    }
    
    public var httpMethod: HTTPMethods {
        .get
    }
    
    public var headers: HTTPHeader {
        .empty
    }
    
    public var task: HTTPTask {
        .request
    }
}
