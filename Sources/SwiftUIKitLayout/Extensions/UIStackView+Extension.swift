//
//  UIStackView+Extension.swift
//  SwiftUIKitLayout
//

import UIKit

public extension UIStackView {
    @discardableResult
    func margin(_ margin: UIEdgeInsets) -> Self {
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = margin
        return self
    }
    
    @discardableResult
    func addArrangedSubviews(_ views: [UIView]) -> Self {
        for view in views {
            addArrangedSubview(view)
        }
        return self
    }
    
    @discardableResult
    func removeAllArrangedSubviews() -> Self {
        for view in arrangedSubviews {
            removeArrangedSubview(view)
            view.removeFromSuperview()
        }
        return self
    }
}
