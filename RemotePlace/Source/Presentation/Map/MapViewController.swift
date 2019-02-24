//
//  MapViewController.swift
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

final class MapViewController: UIViewController {

    var system: MapSystem = MapSystem()

    var inputEvent: PublishSubject<MapEvent> = PublishSubject()

    var disposeBag: DisposeBag = DisposeBag()

    var mapView: MapRootView { return self.view as! MapRootView }

    override func awakeFromNib() {
        super.awakeFromNib()

        self.startSystem(sideEffects: [])
        self.inputEvent.onNext(.tapTap)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
}

// MARK: Control

extension MapViewController: ControlSystem {

    func update(state: SystemType.State) {
        print(state)
    }
}




//Coordinator <-> VC <-> Feedback <-> Interactos
/*

VC -> (event) Feedback
Feedback --> (model) VC

VC --> (event) Coordinator
Coordinator -> (input) VC
*/
