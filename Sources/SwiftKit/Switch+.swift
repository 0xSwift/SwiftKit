//
//  Switch+.swift
//  
//
//  Created by Zach Eriksen on 7/7/20.
//

import Foundation

/**
 # switchmap
 
 This function allows you to use a `switch` in one line. As this isn't using an actual `switch`, you do not need to supply all the cases of the value. This function only returns one value for one case.
 
 - Parameters:
 - value: Value to be used in the `switch`
 - cases: Cases to determine value to return
 - default: Default value if none of the `cases` succeed
 
 - Returns: Value returned from the valid case.
 
 # Motivation
 
 If you want to set a variable's value using a `switch`, your code might look similar to this:
 
 ```
 enum Example {
 case a, b, c, d
 }
 
 var value: Example = .c
 let switchedValue: String
 
 switch value {
 case .a:
 switchedValue = "The value was `a`"
 case .b:
 switchedValue = "The value was `b`"
 case .c:
 switchedValue = "The value was `c`"
 case .d:
 switchedValue = "The value was `d`"
 }
 
 print(switchedValue) // The value was `c`
 ```
 
 # Proposed solution
 
 Allowing the `switch` to return a value would reduce redundant code.
 
 ```
 enum Example {
 case a, b, c, d
 }
 
 var value: Example = .c
 let switchedValue: String? = switchmap(value: value,
 cases: [
 .a: "The value was `a`",
 .b: "The value was `b`",
 .c: "The value was `c`",
 .d: "The value was `d`"])
 
 print(switchedValue) // Optional("The value was `c`")
 ```
 */
public func switchmap<T: Hashable, O>(value: T,
                                      cases: [T: O?],
                                      default defaultCase: O? = nil) -> O? {
    
    guard let switchCase = cases[value] else {
        return defaultCase
    }
    
    return switchCase
}

/**
 # switcheach
 
 This function allows you to use a `switch` in one line. As this isn't using an actual `switch`, you do not need to supply all the cases of the value.
 
 - Parameters:
 - value: Value to be used in the `switch`
 - cases: Cases to determine code paths
 - default: Default Case if none of the `cases` succeed
 */
public func switcheach<T: Hashable>(value: T,
                                    cases: [T: () -> Void],
                                    default defaultCase: () -> Void = {}) {
    
    guard let switchCase = cases[value] else {
        return defaultCase()
    }
    
    return switchCase()
}

public extension Collection where Element: Hashable {
    
    /**
     switchmap
     
     `map` over the Collection and `switchmap` each value.
     
     - Parameters:
     - cases: Cases to determine code paths
     - default: Default Case if none of the `cases` succeed
     
     - Returns: [T?]
     */
    func switchmap<T>(cases: [Element: T?],
                      default defaultCase: T? = nil) -> [T?] {
        map {
            SwiftKit.switchmap(value: $0, cases: cases, default: defaultCase)
        }
    }
    
    /**
     switcheach
     
     Loop over the Collection and `switcheach` each value.
     
     - Parameters:
     - cases: Cases to determine code paths
     - default: Default Case if none of the `cases` succeed
     */
    func switcheach(cases: [Element: () -> Void],
                    default defaultCase: () -> Void = {}) {
        forEach {
            SwiftKit.switcheach(value: $0, cases: cases, default: defaultCase)
        }
    }
}
