//
//  Power.swift
//  SwiftKit
//
//  Created by Zach Eriksen on 8/3/20.
//

import Foundation

// MARK: Printable

public protocol Printable { }
public extension Printable {
    @discardableResult
    func log() -> Self {
        guard let stringValue = self as? CustomStringConvertible else {
            print(self)
            return self
        }
        
        print(stringValue)
        
        return self
    }
}

// MARK: Configurable

public protocol Configurable: class { }
public extension Configurable {
    @discardableResult
    func configure(object: (inout Self) -> Void) -> Self {
        var copy = self
        
        object(&copy)
        
        return self
    }
    
    @discardableResult
    func configure(tryObject: (inout Self) throws -> Void) throws -> Self {
        var copy = self
        
        try tryObject(&copy)
        
        return self
    }
}

// MARK: Actionable

public protocol Actionable { }
public extension Actionable {
    @discardableResult
    func `do`(action: (Self) -> Void) -> Self {
        action(self)
        
        return self
    }
    
    @discardableResult
    func `do`(tryAction: (Self) throws -> Void) throws -> Self {
        try tryAction(self)
        
        return self
    }
}
