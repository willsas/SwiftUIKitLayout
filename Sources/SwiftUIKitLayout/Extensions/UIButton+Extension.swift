//
//  UIButton+Extension.swift
//  SwiftUIKitLayout
//

import UIKit

public extension UIButton {

    @discardableResult
    func title(_ text: String?, with state: UIControl.State = .normal) -> Self {
        self.setTitle(text, for: state)
        return self
    }
    
    @discardableResult
    func alignment(_ alignment: UIControl.ContentHorizontalAlignment) -> Self {
        contentHorizontalAlignment = alignment
        return self
    }
    
    @discardableResult
    func titleColor(_ titleColor: UIColor?, for state: UIControl.State = .normal) -> Self {
        setTitleColor(titleColor, for: state)
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont?) -> Self {
        titleLabel?.font = font
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?, with state: UIControl.State = .normal) -> Self {
        self.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> Self {
        self.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    func isLoading(_ isLoading: Bool) -> Self {
        self.configuration?.showsActivityIndicator = isLoading
        return self
    }
    
    @discardableResult
    func onTapAction(_ addTapAction: @escaping () -> Void) -> Self {
        addAction(UIAction(handler: { _ in
            addTapAction()
        }), for: .touchUpInside)
        return self
    }
    
    @discardableResult
    func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        titleLabel?.lineBreakMode = lineBreakMode
        return self
    }
    
    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> Self {
        titleLabel?.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    func menuPrimaryAction(_ menu: UIMenu) -> Self {
        self.menu = menu
        showsMenuAsPrimaryAction = true
        return self
    }
}
