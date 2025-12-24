//
//  UIVIew+Extension.swift
//  SwiftUIKitLayout
//

import UIKit

public extension UIView {
    
    @discardableResult
    func addSubview(
        _ subview: UIView,
        @ConstraintBuilder constraints: () -> [NSLayoutConstraint]
    ) -> Self {
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
        NSLayoutConstraint.activate(constraints())
        return self
    }
    
    @discardableResult
    func addSubview(
        _ subview: UIView,
        @ConstraintBuilder constraints: (UIView) -> [NSLayoutConstraint]
    ) -> Self {
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
        NSLayoutConstraint.activate(constraints(subview))
        return self
    }
    
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = true
        return self
    }
    
    @available(iOS 26.0, *)
    @discardableResult
    func cornerConfiguration(_ cornerConfiguration: UICornerConfiguration) -> Self {
        layer.masksToBounds = true
        self.cornerConfiguration = cornerConfiguration
        return self
    }
}
