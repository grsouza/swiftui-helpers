import SwiftUI

private enum ErrorEnvironmentKey: EnvironmentKey {
  static var defaultValue: Error? { nil }
}

extension EnvironmentValues {
  public var error: Error? {
    get { self[ErrorEnvironmentKey.self] }
    set { self[ErrorEnvironmentKey.self] = newValue }
  }
}

extension View {
  public func error(_ error: Error?) -> some View {
    self.environment(\.error, error)
  }
}
