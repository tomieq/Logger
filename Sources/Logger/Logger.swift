public class Logger {
    let tag: String

    public init(_ tag: Any) {
        self.tag = String(describing: tag)
    }

    public func i(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.info, self.tag, msg)
    }
    
    public func e(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.error, self.tag, msg)
    }
    
    public func d(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.debug, self.tag, msg)
    }
    
    public func w(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.warning, self.tag, msg)
    }
}

