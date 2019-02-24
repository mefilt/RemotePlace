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

final class PlaceCardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: UITableViewDataSource and UITableViewDelegate
extension PlaceCardViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell: PlaceDetailCell = tableView.dequeueCell()

        cell.update(with: PlaceDetailCell.Model.init(title: "The Burger Brothers easy places",
                                                     address: "г.Москва, 1-й Тверской-Ямской пер., 11, м. Маяковская, 12345 сущевская набережная слева от бц",
                                                     iconURL: nil,
                                                     isTrusted: false,
                                                     raiting: nil))

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

