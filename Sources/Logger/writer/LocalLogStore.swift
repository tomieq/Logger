//
//  LocalLogStore.swift
//  Logger
//
//  Created by Tomasz on 16/12/2024.
//
import Foundation

struct LocalLogStore: LogStore {
    func log(_ level: LogLevel, _ label: String, _ message: String) {
        self.log(level, label, message, fields: [:])
    }

    func log(_ level: LogLevel, _ label: String, _ message: String, fields: LogFields) {
        let localMessage = "\(Date().logFormat) [\(level)] [\(label)] \(message)"
        print(localMessage)
    }
}
