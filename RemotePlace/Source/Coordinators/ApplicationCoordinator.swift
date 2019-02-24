//
//  ApplicationCoordinator.swift
//  RemotePlace
//
//  Created by Prokofev Ruslan on 10/02/2019.
//  Copyright © 2019 RemotePlace. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {

    func start()
}

final class ApplicationCoordinator: Coordinator {

    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func start() {

        let story = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = story.instantiateInitialViewController() else { return }

        window.rootViewController = vc
        window.makeKeyAndVisible()
    }
}
