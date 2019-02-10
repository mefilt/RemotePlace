//
//  PlaceCardViewController.swift
//  RemotePlace
//
//  Created by Prokofev Ruslan on 10/02/2019.
//  Copyright © 2019 RemotePlace. All rights reserved.
//

import Foundation
import UIKit

private struct PlaceVM {
    struct Info {
        let name: String
        let description: String
        let iconURL: URL
        let raiting: Int
        let tags: Set<String>
    }
}

final class PlaceCardView: UIView {


    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

final class PlaceCardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: UITableViewDataSource and UITableViewDelegate
extension PlaceCardViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    
}

