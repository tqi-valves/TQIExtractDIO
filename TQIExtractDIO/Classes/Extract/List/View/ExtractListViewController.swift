//
//  ExtractListViewController.swift
//  TQIExtractDIO
//
//  Created by Victor Freitas on 29/01/22.
//

import UIKit

public class ExtractListViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties
    
    let viewModel: ExtractListViewModel!
    
    // MARK: Initializer
    
    public init(viewModel: ExtractListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Lifecycle
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = "Extrato"
        viewModel.delegate = self
        setupTableView()
        getTransactions()
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ExtractViewCell.self)
    }
    
    // MARK: API Methods
    
    func getTransactions() {
        viewModel.getTransactions()
    }
}

// MARK: UITableViewDelegate

extension ExtractListViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.model.transactions.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(of: ExtractViewCell.self, for: indexPath) { [weak self] cell in
            guard let self = self else {
                return
            }
            
            let model = self.viewModel.model.transactions[indexPath.row]
            cell.setup(model)
        }
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75.0
    }
}

// MARK: ExtractListViewModelDelegate

extension ExtractListViewController: ExtractListViewModelViewDelegate {
    func extractListViewModelSuccess(_ viewModel: ExtractListViewModel) {
        tableView.reloadData()
    }
    
    func extractListViewModelError(_ viewModel: ExtractListViewModel, error: Error) {
        debugPrint(error)
    }
}
