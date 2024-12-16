//
//  LogStore.swift
//  Logger
//
//  Created by Tomasz on 16/12/2024.
//

public protocol LogStore {
    func log(_ level: LogLevel, _ tag: String, _ message: String)
}
