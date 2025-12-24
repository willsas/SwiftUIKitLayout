//
//  UITableView+Extension.swift
//  SwiftUIKitLayout
//

import UIKit

public extension UITableView {
    @discardableResult
    func delegate(_ delegate: UITableViewDelegate) -> Self {
        self.delegate = delegate
        return self
    }

    @discardableResult
    func dataSource(_ dataSource: UITableViewDataSource) -> Self {
        self.dataSource = dataSource
        return self
    }

    @discardableResult
    func register<Cell: UITableViewCell>(_ cellClass: Cell.Type) -> Self {
        let identifier = String(describing: cellClass)
        register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }

    @discardableResult
    func register<Cell: UITableViewCell>(_ cellClass: Cell.Type, identifier: String) -> Self {
        register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }

    @discardableResult
    func registerNib<Cell: UITableViewCell>(_ cellClass: Cell.Type, bundle: Bundle? = nil) -> Self {
        let name = String(describing: cellClass)
        let nib = UINib(nibName: name, bundle: bundle)
        register(nib, forCellReuseIdentifier: name)
        return self
    }

    @discardableResult
    func registerNib(
        named nibName: String,
        identifier: String? = nil,
        bundle: Bundle? = nil
    ) -> Self {
        let nib = UINib(nibName: nibName, bundle: bundle)
        register(nib, forCellReuseIdentifier: identifier ?? nibName)
        return self
    }

    @discardableResult
    func registerHeaderFooter<View: UITableViewHeaderFooterView>(_ viewClass: View.Type) -> Self {
        let identifier = String(describing: viewClass)
        register(viewClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }

    @discardableResult
    func registerHeaderFooter<View: UITableViewHeaderFooterView>(
        _ viewClass: View.Type,
        identifier: String
    ) -> Self {
        register(viewClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }

    @discardableResult
    func registerHeaderFooterNib<View: UITableViewHeaderFooterView>(
        _ viewClass: View.Type,
        bundle: Bundle? = nil
    ) -> Self {
        let name = String(describing: viewClass)
        let nib = UINib(nibName: name, bundle: bundle)
        register(nib, forHeaderFooterViewReuseIdentifier: name)
        return self
    }

    @discardableResult
    func registerHeaderFooterNib(
        named nibName: String,
        identifier: String? = nil,
        bundle: Bundle? = nil
    ) -> Self {
        let nib = UINib(nibName: nibName, bundle: bundle)
        register(nib, forHeaderFooterViewReuseIdentifier: identifier ?? nibName)
        return self
    }

    @discardableResult
    func rowHeight(_ height: CGFloat) -> Self {
        rowHeight = height
        return self
    }

    @discardableResult
    func estimatedRowHeight(_ height: CGFloat) -> Self {
        estimatedRowHeight = height
        return self
    }

    @discardableResult
    func separatorStyle(_ style: UITableViewCell.SeparatorStyle) -> Self {
        separatorStyle = style
        return self
    }

    @discardableResult
    func separatorInset(_ inset: UIEdgeInsets) -> Self {
        separatorInset = inset
        return self
    }

    @discardableResult
    func allowsSelection(_ allows: Bool) -> Self {
        allowsSelection = allows
        return self
    }

    @discardableResult
    func allowsMultipleSelection(_ allows: Bool) -> Self {
        allowsMultipleSelection = allows
        return self
    }

    @discardableResult
    func keyboardDismissMode(_ mode: UIScrollView.KeyboardDismissMode) -> Self {
        keyboardDismissMode = mode
        return self
    }

    @discardableResult
    func contentInsetAdjustmentBehavior(
        _ behavior: UIScrollView.ContentInsetAdjustmentBehavior
    ) -> Self {
        contentInsetAdjustmentBehavior = behavior
        return self
    }

    @discardableResult
    func deselectSelectedRows(animated: Bool = true) -> Self {
        indexPathsForSelectedRows?.forEach { deselectRow(at: $0, animated: animated) }
        return self
    }
}
