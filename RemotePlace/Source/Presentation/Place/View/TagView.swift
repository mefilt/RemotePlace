//
//  TagView.swift
//  RemotePlace
//
//  Created by Prokofev Ruslan on 10/02/2019.
//  Copyright © 2019 RemotePlace. All rights reserved.
//

import Foundation
import UIKit

private enum Constants {
    static let cornerRadius: CGFloat = 4
}

final class TagView: UIView, NibOwnerLoadable {

    @IBOutlet private var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        loadNibContent()
        layer.cornerRadius = Constants.cornerRadius
        layer.masksToBounds = true
        layer.maskedCorners = [.layerMaxXMaxYCorner,
                               .layerMaxXMinYCorner,
                               .layerMinXMinYCorner,
                               .layerMinXMaxYCorner]
    }
}

extension TagView: ViewConfiguration {

    func update(with model: String) {
        titleLabel.text = model
    }
}
