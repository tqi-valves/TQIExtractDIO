//
//  ExtractService.swift
//  TQIExtractDIO
//
//  Created by Victor Freitas on 29/01/22.
//

import Foundation
import VFNetwork

public class ExtractService: RequestService<ExtractAPI> {
    public func getTransactions(completion: @escaping (Result<ExtractTransactions, Error>) -> Void) {
        execute(.transactions, responseType: ExtractTransactions.self, completion: completion)
    }
}
