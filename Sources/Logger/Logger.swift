public class Logger {
    let tag: String
    let fields: LogFields

    public init(_ tag: Any) {
        self.tag = String(describing: tag)
        self.fields = [:]
    }
    
    public init(_ tag: Any, fields: LogFields) {
        self.tag = String(describing: tag)
        self.fields = fields
    }

    public func i(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.info, self.tag, msg, fields: self.fields)
    }
    
    public func e(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.error, self.tag, msg, fields: self.fields)
    }
    
    public func d(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.debug, self.tag, msg, fields: self.fields)
    }
    
    public func w(_ msg: CustomStringConvertible) {
        LoggerDispatcher.dispatch(.warning, self.tag, msg, fields: self.fields)
    }
    
    public func withField(_ key: String, _ value: CustomStringConvertible) -> Logger {
        Logger(self.tag, fields: self.fields.withField(key, value))
    }
}

