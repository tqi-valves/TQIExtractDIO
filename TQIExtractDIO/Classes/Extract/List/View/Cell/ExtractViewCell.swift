//
//  ExtractViewCell.swift
//  TQIExtractDIO
//
//  Created by Victor Freitas on 29/01/22.
//

import UIKit

class ExtractViewCell: UITableViewCell {

    @IBOutlet weak var movementDescriptionLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    func setup(_ model: ExtractTransaction) {
        movementDescriptionLabel.text = model.movementDescription
        
        if model.movement == .out {
            valueLabel.textColor = .systemRed
            setValue("-" + model.value)
            
        } else {
            valueLabel.textColor = .systemGreen
            setValue(model.value)
        }
        
        var iconName: String  {
            switch model.type {
            case .payment:
                return "payment-icon"
            case .pixSent:
                return "pix-sent-icon"
            case .recharge:
                return "recharge-icon"
            case .tedReceive:
                return "ted-receive-icon"
            }
        }
        
        iconImageView.image = UIImage(named: iconName)
        dateTimeLabel.text = model.dateTime
    }
    
    func setValue(_ value: String) {
        valueLabel.text = value
    }

    
    
}
