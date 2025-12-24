# SwiftUIKitLayout

A lightweight UIKit DSL inspired by SwiftUI, crafted for building view hierarchies and Auto Layout constraints in a declarative, chainable style.

- Declarative view building
```swift
let stack = VStackView(spacing: 8) {
    UILabel().text("Title")
    HStackView(spacing: 4) {
        UIImageView()
        UILabel().text("User")
    }
}

view.addSubview(stack) {
    stack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    stack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
}
```
- UIKit Extensions helper

## Installation

Use Swift Package Manager.

- In Xcode: File > Add Package Dependencies…
- Enter the repository URL of this package.
- Select the “SwiftUIKitLayout” library.

Or in `Package.swift`:

```swift
.package(url: "https://github.com/willsas/SwiftUIKitLayout", from: "0.1.0")
```
