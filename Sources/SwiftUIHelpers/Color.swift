import SwiftUI

#if canImport(UIKit)
  import UIKit

  extension Color {
    public init(dynamicProvider: @escaping (UITraitCollection) -> Color) {
      self = Self(UIColor { UIColor(dynamicProvider($0)) })
    }
  }
#endif
