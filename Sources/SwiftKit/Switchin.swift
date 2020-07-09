//
//  Switchin.swift
//  
//
//  Created by Zach Eriksen on 7/7/20.
//

import Foundation

public func switchin<T: Hashable, O>(value: T,
                                     cases: [T: O?],
                                     default defaultCase: O? = nil) -> O? {
    
    guard let switchCase = cases[value] else {
        return defaultCase
    }
    
    return switchCase
}

public extension Collection where Element: Hashable {
    func switchin<T>(cases: [Element: T?],
                     default defaultCase: T? = nil) -> [T?] {
        map {
            SwiftKit.switchin(value: $0, cases: cases, default: defaultCase)
        }
    }
}
