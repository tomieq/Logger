public class Logger {
    let tag: String

    public init(_ tag: Any) {
        self.tag = String(describing: tag)
    }

    func i(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.info, self.tag, msg)
    }
    
    func e(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.error, self.tag, msg)
    }
    
    func d(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.debug, self.tag, msg)
    }
    
    func w(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.warning, self.tag, msg)
    }
}

