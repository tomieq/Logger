//
//  LoggerDispatcher.swift
//  Logger
//
//  Created by Tomasz on 16/12/2024.
//

public struct LoggerDispatcher {
    nonisolated(unsafe) public static var stores: [LogStore] = [LocalLogStore()]

    static func dispatch(_ level: LogLevel,
                                 _ tag: @autoclosure () -> String,
                                 _ message: @autoclosure () -> CustomStringConvertible) {
        let tag = tag().description.replacingOccurrences(of: "\\/", with: "/").trimmingCharacters(in: .whitespaces)
        let message = message().description.trimmingCharacters(in: .whitespaces)
        for store in Self.stores {
            store.log(level, tag, message)
        }
    }
}
