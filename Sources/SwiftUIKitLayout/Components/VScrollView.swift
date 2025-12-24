//
//  VScrollView.swift
//  SwiftUIKitLayout


import UIKit

public final class VScrollView: UIScrollView {
    
    private let stackView: UIStackView
    
    public init(
        spacing: CGFloat = 0,
        alignment: UIStackView.Alignment? = nil,
        distribution: UIStackView.Distribution? = nil,
        margin: UIEdgeInsets = .zero,
        @ViewBuilder arrangedSubviews: () -> [UIView]
    ) {
        stackView = VStackView(
            spacing: spacing,
            alignment: alignment,
            distribution: distribution,
            arrangedSubviews: arrangedSubviews
        ).margin(margin)
        
        super.init(frame: .zero)
        
        addSubview(stackView) {
            NSLayoutConstraint.fill($0, in: self)
            $0.widthAnchor.constraint(equalTo: widthAnchor)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func addArrangedSubview(_ view: UIView) {
        stackView.addArrangedSubview(view)
    }
    
    public func addArrangedSubviews(_ views: [UIView]) {
        stackView.addArrangedSubviews(views)
    }
    
    public func insertArrangedSubview(_ view: UIView, at index: Int) {
        stackView.insertArrangedSubview(view, at: index)
    }
    
    public func removeArrangedSubview(_ view: UIView) {
        stackView.removeArrangedSubview(view)
        view.removeFromSuperview()
    }
    
    public func removeAllArrangedSubviews() {
        stackView.removeAllArrangedSubviews()
    }
}
