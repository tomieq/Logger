# Logger
It is simple logger layer written in Swift

```swift
struct Car {
    let logger = Logger(Car.self)
    
    func doSomething() {
        logger.i("did something")
    }
}
```

By default it is configured to use `print` function (`LocalLogStore`).

You can add another log handler by implementing protocol `LogStore` and registering it to `LoggerDispatcher.stores.append(...)`

```swift
struct MyLogger: LogStore {
    func log(_ level: LogLevel, _ tag: String, _ message: String) {
        print("Simon says: \(message)")
    }
}

LoggerDispatcher.stores.append(MyLogger())
```
