//
//  PlaceDetailCell.swift
//  RemotePlace
//
//  Created by Prokofev Ruslan on 10/02/2019.
//  Copyright © 2019 RemotePlace. All rights reserved.
//

import Foundation
import UIKit

final class PlaceDetailCell: UITableViewCell, Reusable {

    struct Model {
        let title: String
        let address: String
        let iconURL: URL?
        let isTrusted: Bool
        let raiting: Int?
    }

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var trustedTagView: TagView!
}

extension PlaceDetailCell: ViewConfiguration {
    
    func update(with model: PlaceDetailCell.Model) {
        titleLabel.text = model.title
        addressLabel.text = model.address
        
        if let iconURL = model.iconURL {
            iconImageView.image = nil
            iconImageView.isHidden = false
        } else {
            iconImageView.isHidden = true
        }

        if model.isTrusted {
            trustedTagView.update(with: "проверенное")
        } else {
            trustedTagView.update(with: "не проверенное")
        }
    }
}
