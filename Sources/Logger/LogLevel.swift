//
//  LogLevel.swift
//  Logger
//
//  Created by Tomasz on 16/12/2024.
//

public enum LogLevel: String {
    case debug, info, warning, error
}

extension LogLevel {
    var weight: Int {
        switch self {
        case .debug: return 0
        case .info: return 1
        case .warning: return 2
        case .error: return 3
        }
    }
}

extension LogLevel: Comparable {
    public static func < (lhs: LogLevel, rhs: LogLevel) -> Bool {
        lhs.weight < rhs.weight
    }
}
