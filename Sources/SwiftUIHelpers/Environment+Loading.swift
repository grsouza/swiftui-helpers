import SwiftUI

private enum LoadingEnvironmentKey: EnvironmentKey {
  static var defaultValue: Bool { false }
}

extension EnvironmentValues {
  /// The loading value of this Environment.
  public var isLoading: Bool {
    get { self[LoadingEnvironmentKey.self] }
    set { self[LoadingEnvironmentKey.self] = newValue }
  }
}

extension View {
  /// Assigns `isLoading` value to the `loading` environment property.
  public func loading(_ isLoading: Bool) -> some View {
    self.environment(\.isLoading, isLoading)
  }
}
