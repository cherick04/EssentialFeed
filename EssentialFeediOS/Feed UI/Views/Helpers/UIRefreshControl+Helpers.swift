//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Erick Chacon on 11/8/22.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
