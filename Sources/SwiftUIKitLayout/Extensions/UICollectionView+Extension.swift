//
//  UICollectionView+Extension.swift
//  SwiftUIKitLayout
//

import UIKit

public extension UICollectionView {
    
    @discardableResult
    func register(_ cell: AnyClass?, identifier: String) -> Self {
        register(cell, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(
        _ viewClass: AnyClass?,
        forSupplementaryViewOfKind kind: String,
        identifier: String
    ) -> Self {
        register(viewClass, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UICollectionViewDelegate?) -> Self {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    func dataSource(_ dataSource: UICollectionViewDataSource?) -> Self {
        self.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func refreshControl(_ refreshControl: UIRefreshControl) -> Self {
        self.refreshControl = refreshControl
        return self
    }
    
    @discardableResult
    func decelerationRate(_ decelerationRate: UICollectionView.DecelerationRate) -> Self {
        self.decelerationRate = decelerationRate
        return self
    }
}
