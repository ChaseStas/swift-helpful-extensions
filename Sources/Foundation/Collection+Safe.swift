import Foundation

extension Collection {
    ///Safe mode to get current element from array
    subscript(exists index: Index) -> Element? {
        self.indices.contains(index) ? self[index] : nil
    }
}
