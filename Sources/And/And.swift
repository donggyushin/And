import UIKit

public protocol And {}

extension And where Self: AnyObject {
    /// Makes it available to set properties with closures just after initializing.
    /// @inlinable is a function that informs the compiler of the inside of the function as part of the module's interface for optimization.
    @inlinable
    public func and(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
}

extension And where Self: Any {
    /// Makes it available to execute something with closures.
    @inlinable
    public func `do`(_ block: (Self) -> Void) {
        block(self)
    }
    
    /// Makes it available to set properties with closures just after initializing and copying the value types.
    @inlinable
    public func with(_ block: (inout Self) -> Void) -> Self {
        var copy = self
        block(&copy)
        return copy
    }
}

extension NSObject: And {}
extension Array: And {}
extension Dictionary: And {}
extension Set: And {}
extension UIEdgeInsets: And {}
extension UIOffset: And {}
extension UIRectEdge: And {}
