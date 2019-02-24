//
//  MapSystem.swift
//  RemotePlace
//
//  Created by Prokofev Ruslan on 10/02/2019.
//  Copyright © 2019 RemotePlace. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxFeedback

struct MapState {}

enum MapEvent {
    case hanlerEvent(ViewAppearanceEvent)
    case tapTap
}

final class MapSystem: System {

    typealias State = MapState

    typealias Event = MapEvent

    static var initialState: State {
        return MapState()
    }

    static func reduce(event: Event, state: inout State) -> State {
        print(event)
        return state
    }

    func internalSideEffects() -> [Feedback] {
        return []
    }
}


