//
//  SwiftKit+Swift.swift
//  
//
//  Created by Zach Eriksen on 10/12/20.
//

import Foundation
import Object

// MARK: Conformance

public protocol PowerClass: Printable, Configurable, Actionable, Retrievable { }
public protocol PowerType: Printable, Actionable, Retrievable { }

// MARK: Default PowerClasses

extension NSObject: PowerClass { }
extension Object: PowerClass { }

// MARK: Default PowerTypes

extension String: PowerType, Error { }
extension Int: PowerType { }
extension Double: PowerType { }
