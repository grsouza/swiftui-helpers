import SwiftUI

extension Binding {
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
