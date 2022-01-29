//
//  ViewController.swift
//  TQIExtractDIO_Example
//
//  Created by Gabriel Borges on 29/01/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import TQIExtractDIO

class ViewController: UIViewController {
    
    //MARK: - Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var extractButton: UIButton!
    
    let extractListCoordinator = ExtractListCoordinator()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Action
    
    @IBAction func goToExtractButtonTapped(_ sender: UIButton) {
        guard let navigation = navigationController else { return }
        extractListCoordinator.start(usingPresentation: .push(navigation: navigation))
        
    }
}
