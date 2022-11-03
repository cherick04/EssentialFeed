//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Erick Chacon on 11/3/22.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
