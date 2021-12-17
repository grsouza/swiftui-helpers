import SwiftUI

extension Binding {
  /// Filters binding emissions by removing duplicate values.
  /// - Parameter predicate: predicate used for filering emissions.
  /// - Returns: a new Binding that skips duplicate values.
  public func removeDuplicates(by predicate: @escaping (Value, Value) -> Bool) -> Self {
    Binding(
      get: { self.wrappedValue },
      set: { if !predicate(self.wrappedValue, $0) { self.wrappedValue = $0 } }
    )
  }
}

extension Binding where Value: Equatable {
  public func removeDuplicates() -> Self {
    self.removeDuplicates(by: ==)
  }
}
