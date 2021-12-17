import SwiftUI

private enum LoadingEnvironmentKey: EnvironmentKey {
  static var defaultValue: Bool { false }
}

extension EnvironmentValues {
  public var isLoading: Bool {
    get { self[LoadingEnvironmentKey.self] }
    set { self[LoadingEnvironmentKey.self] = newValue }
  }
}

extension View {
  public func loading(_ isLoading: Bool) -> some View {
    self.environment(\.isLoading, isLoading)
  }
}
