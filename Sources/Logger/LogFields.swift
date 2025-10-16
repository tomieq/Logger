//
//  LogFields.swift
//  Logger
// 
//  Created by: tomieq on 18/09/2025
//


public typealias LogFields = [String: CustomStringConvertible]

extension LogFields {
    func withField(_ key: String, _ value: CustomStringConvertible) -> LogFields {
        var result = self
        result[key] = value
        return result
    }
}
