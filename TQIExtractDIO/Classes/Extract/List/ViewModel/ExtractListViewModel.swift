//
//  ExtractListViewModel.swift
//  TQIExtractDIO
//
//  Created by Victor Freitas on 29/01/22.
//

import Foundation

protocol ExtractListViewModelViewDelegate: AnyObject {
    func extractListViewModelSuccess(_ viewModel: ExtractListViewModel)
    func extractListViewModelError(_ viewModel: ExtractListViewModel, error: Error)
}

public class ExtractListViewModel {
    
    // MARK: Properties
    
    let service: ExtractService
    var model: ExtractTransactions
    weak var delegate: ExtractListViewModelViewDelegate?
    
    // MARK: Initializer
    
    public init(model: ExtractTransactions = .init(), service: ExtractService = .init()) {
        self.service = service
        self.model = model
    }
    
    // MARK: API Functions
    
    func getTransactions() {
        service.getTransactions { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                switch result {
                case let .success(transactions):
                    self.model = transactions
                    self.delegate?.extractListViewModelSuccess(self)
                case let .failure(error):
                    self.delegate?.extractListViewModelError(self, error: error)
                }
            }
        }
    }
}
