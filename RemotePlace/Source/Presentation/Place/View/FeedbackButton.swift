//
//  FeedbackButton.swift
//  RemotePlace
//
//  Created by Prokofev Ruslan on 10/02/2019.
//  Copyright © 2019 RemotePlace. All rights reserved.
//

import Foundation
import UIKit

private enum Constants {
    static let sizeImage: CGFloat = 30
    static let heightTitle: CGFloat = 28
    static let textPaddingLeft: CGFloat = 0
}

final class FeedbackButton: UIView, NibOwnerLoadable {

    @IBOutlet private var feedbackControl: FeedbackControl!

    override func awakeFromNib() {
        loadNibContent()
        super.awakeFromNib()
    }
}

final class FeedbackControl: UIButton {

    private let shadowView: UIView! = UIView()

    override func awakeFromNib() {
        super.awakeFromNib()

        titleLabel?.textAlignment = .center
        shadowView.layer.shadowRadius = 16
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 2)
        shadowView.layer.shadowOpacity = 1.46
        shadowView.layer.shadowColor = UIColor(named: "shadow_button")?.cgColor
        shadowView.translatesAutoresizingMaskIntoConstraints = false
        shadowView.backgroundColor = .red

        layer.shadowRadius = 16
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowOpacity = 1.46
        layer.shadowColor = UIColor(named: "shadow_button")?.cgColor
//        shadowView.translatesAutoresizingMaskIntoConstraints = true
//        shadowView.backgroundColor = .red

        self.titleLabel?.insertSubview(shadowView, at: 0)
        if let titleLabel = self.titleLabel {
            NSLayoutConstraint.activate(
                [shadowView.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
                 shadowView.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
                 shadowView.heightAnchor.constraint(equalTo: titleLabel.heightAnchor),
                 shadowView.widthAnchor.constraint(equalTo: titleLabel.widthAnchor)
                ]
            )
        }
    }

    override func titleRect(forContentRect contentRect: CGRect) -> CGRect {

        let maxWidthTitle = contentRect.width - Constants.sizeImage - Constants.textPaddingLeft

        let x = (contentRect.width - maxWidthTitle)

        return CGRect(x: x,
                      y: (contentRect.height - Constants.heightTitle) * 0.5,
                      width: maxWidthTitle,
                      height: Constants.heightTitle)
    }

    override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
        return CGRect(x: 0,
                      y: (contentRect.height - Constants.sizeImage) * 0.5,
                      width: Constants.sizeImage,
                      height: Constants.sizeImage)
    }
}
