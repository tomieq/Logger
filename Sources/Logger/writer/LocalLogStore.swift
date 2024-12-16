//
//  LocalLogStore.swift
//  Logger
//
//  Created by Tomasz on 16/12/2024.
//
import Foundation

struct LocalLogStore: LogStore {
    func log(_ level: LogLevel, _ label: String, _ message: String) {
        let localMessage = "\(Date().logFormat) [\(level)] [\(label)] \(message)"
        print(localMessage)
    }
}
