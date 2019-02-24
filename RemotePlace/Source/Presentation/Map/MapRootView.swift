//
//  MapView.swift
//  RemotePlace
//
//  Created by Prokofev Ruslan on 10/02/2019.
//  Copyright © 2019 RemotePlace. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa
import RxFeedback
import YandexMapKit

final class MapRootView: UIView {

    @IBOutlet var mapView: YMKMapView!
    @IBOutlet var button: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
    }    
}
