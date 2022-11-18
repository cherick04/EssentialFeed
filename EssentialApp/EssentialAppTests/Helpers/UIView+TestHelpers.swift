//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Erick Chacon on 11/18/22.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
