//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Erick Chacon on 11/1/22.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
