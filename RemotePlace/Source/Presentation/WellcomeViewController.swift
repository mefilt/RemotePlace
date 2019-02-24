//
//  WellcomeViewController.swift
//  RemotePlace
//
//  Created by Prokofev Ruslan on 10/02/2019.
//  Copyright © 2019 RemotePlace. All rights reserved.
//

import Foundation
import UIKit

final class WellcomeView: UIView {
    @IBOutlet fileprivate var beginButton: UIButton! = nil

    override func awakeFromNib() {
        super.awakeFromNib()

        beginButton.layer.cornerRadius = 8
        beginButton.layer.maskedCorners = [.layerMaxXMaxYCorner,
                                           .layerMaxXMinYCorner,
                                           .layerMinXMinYCorner,
                                           .layerMinXMaxYCorner]
        beginButton.layer.shadowRadius = 16
        beginButton.layer.shadowOffset = CGSize(width: 0, height: 2)
        beginButton.layer.shadowOpacity = 0.46
        //TODO: Check color shadow
    }
}

final class WellcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

