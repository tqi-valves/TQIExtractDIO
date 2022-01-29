//
//  ExtractListCoordinator.swift
//  TQIExtractDIO
//
//  Created by Victor Freitas on 29/01/22.
//

import Foundation
import TQICoordinator

public class ExtractListCoordinator: Coordinator {
    public var view: ExtractListViewController?
    public var navigation: UINavigationController?
    public var presentationType: PresentationType?
    
    public init() {
        view = ExtractListViewController(viewModel: .init())
    }
    
    public func stop() {
        view = nil
        view = nil
        presentationType = nil
    }
}
