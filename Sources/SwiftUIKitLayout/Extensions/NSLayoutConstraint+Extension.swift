//
//  NSLayoutConstraint+Extension.swift
//  SwiftUIKitLayout
//

import UIKit

public extension NSLayoutConstraint {
    static func fill(_ subview: UIView, in superview: UIView) -> [NSLayoutConstraint] {
        [
            subview.leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            subview.trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            subview.topAnchor.constraint(equalTo: superview.topAnchor),
            subview.bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ]
    }
}
