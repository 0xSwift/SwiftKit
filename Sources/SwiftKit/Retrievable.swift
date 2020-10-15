//
//  Retrievable.swift
//  
//
//  Created by Zach Eriksen on 10/12/20.
//

import Object

public protocol Retrievable { }
public extension Retrievable {
    
    func retrieve<Value>(_ keyPath: KeyPath<Self, Value>) -> Value? {
        self[keyPath: keyPath]
    }
    
    func values<KP>(forPaths paths: KeyPath<Self, KP>...) -> Object {
        Object(
            paths.map { keyPath in
                retrieve(keyPath)
            }
        )
    }
    
    func values<KP>(_ kp: KeyPath<Self, KP>) -> Object {
        let object = Object()
        
        if let kp = retrieve(kp) {
            object.add(variable: "kp", value: kp)
        }
        
        return object
    }
    
    func values<KP0, KP1>
        (
        _ kp0: KeyPath<Self, KP0>,
        _ kp1: KeyPath<Self, KP1>
    )
        -> Object {
            let object = Object()
            
            if let kp0 = retrieve(kp0) {
                object.add(variable: "kp0", value: kp0)
            }
            
            if let kp1 = retrieve(kp1) {
                object.add(variable: "kp1", value: kp1)
            }
            
            return object
    }
    
    func values<KP0, KP1, KP2>
        (
        _ kp0: KeyPath<Self, KP0>,
        _ kp1: KeyPath<Self, KP1>,
        _ kp2: KeyPath<Self, KP2>
    ) -> Object {
        let object = Object()
        
        if let kp0 = retrieve(kp0) {
            object.add(variable: "kp0", value: kp0)
        }
        
        if let kp1 = retrieve(kp1) {
            object.add(variable: "kp1", value: kp1)
        }
        
        if let kp2 = retrieve(kp2) {
            object.add(variable: "kp2", value: kp2)
        }
        
        return object
    }
    
    func values<KP0, KP1, KP2, KP3>
        (
        _ kp0: KeyPath<Self, KP0>,
        _ kp1: KeyPath<Self, KP1>,
        _ kp2: KeyPath<Self, KP2>,
        _ kp3: KeyPath<Self, KP3>
    ) -> Object {
        let object = Object()
        
        if let kp0 = retrieve(kp0) {
            object.add(variable: "kp0", value: kp0)
        }
        
        if let kp1 = retrieve(kp1) {
            object.add(variable: "kp1", value: kp1)
        }
        
        if let kp2 = retrieve(kp2) {
            object.add(variable: "kp2", value: kp2)
        }
        
        if let kp3 = retrieve(kp3) {
            object.add(variable: "kp3", value: kp3)
        }
        
        return object
    }
    
    func values<KP0, KP1, KP2, KP3, KP4>
        (
        _ kp0: KeyPath<Self, KP0>,
        _ kp1: KeyPath<Self, KP1>,
        _ kp2: KeyPath<Self, KP2>,
        _ kp3: KeyPath<Self, KP3>,
        _ kp4: KeyPath<Self, KP4>
    ) -> Object {
        let object = Object()
        
        if let kp0 = retrieve(kp0) {
            object.add(variable: "kp0", value: kp0)
        }
        
        if let kp1 = retrieve(kp1) {
            object.add(variable: "kp1", value: kp1)
        }
        
        if let kp2 = retrieve(kp2) {
            object.add(variable: "kp2", value: kp2)
        }
        
        if let kp3 = retrieve(kp3) {
            object.add(variable: "kp3", value: kp3)
        }
        
        if let kp4 = retrieve(kp4) {
            object.add(variable: "kp4", value: kp4)
        }
        
        return object
    }
    
    func values<KP0, KP1, KP2, KP3, KP4, KP5>
        (
        _ kp0: KeyPath<Self, KP0>,
        _ kp1: KeyPath<Self, KP1>,
        _ kp2: KeyPath<Self, KP2>,
        _ kp3: KeyPath<Self, KP3>,
        _ kp4: KeyPath<Self, KP4>,
        _ kp5: KeyPath<Self, KP5>
    ) -> Object {
        let object = Object()
        
        if let kp0 = retrieve(kp0) {
            object.add(variable: "kp0", value: kp0)
        }
        
        if let kp1 = retrieve(kp1) {
            object.add(variable: "kp1", value: kp1)
        }
        
        if let kp2 = retrieve(kp2) {
            object.add(variable: "kp2", value: kp2)
        }
        
        if let kp3 = retrieve(kp3) {
            object.add(variable: "kp3", value: kp3)
        }
        
        if let kp4 = retrieve(kp4) {
            object.add(variable: "kp4", value: kp4)
        }
        
        if let kp5 = retrieve(kp5) {
            object.add(variable: "kp5", value: kp5)
        }
        
        return object
    }
    
    func values<KP0, KP1, KP2, KP3, KP4, KP5, KP6>
        (
        _ kp0: KeyPath<Self, KP0>,
        _ kp1: KeyPath<Self, KP1>,
        _ kp2: KeyPath<Self, KP2>,
        _ kp3: KeyPath<Self, KP3>,
        _ kp4: KeyPath<Self, KP4>,
        _ kp5: KeyPath<Self, KP5>,
        _ kp6: KeyPath<Self, KP6>
    ) -> Object {
        let object = Object()
        
        if let kp0 = retrieve(kp0) {
            object.add(variable: "kp0", value: kp0)
        }
        
        if let kp1 = retrieve(kp1) {
            object.add(variable: "kp1", value: kp1)
        }
        
        if let kp2 = retrieve(kp2) {
            object.add(variable: "kp2", value: kp2)
        }
        
        if let kp3 = retrieve(kp3) {
            object.add(variable: "kp3", value: kp3)
        }
        
        if let kp4 = retrieve(kp4) {
            object.add(variable: "kp4", value: kp4)
        }
        
        if let kp5 = retrieve(kp5) {
            object.add(variable: "kp5", value: kp5)
        }
        
        if let kp6 = retrieve(kp6) {
            object.add(variable: "kp6", value: kp6)
        }
        
        return object
    }
    
    func values<KP0, KP1, KP2, KP3, KP4, KP5, KP6, KP7>
        (
        _ kp0: KeyPath<Self, KP0>,
        _ kp1: KeyPath<Self, KP1>,
        _ kp2: KeyPath<Self, KP2>,
        _ kp3: KeyPath<Self, KP3>,
        _ kp4: KeyPath<Self, KP4>,
        _ kp5: KeyPath<Self, KP5>,
        _ kp6: KeyPath<Self, KP6>,
        _ kp7: KeyPath<Self, KP7>
    ) -> Object {
        let object = Object()
        
        if let kp0 = retrieve(kp0) {
            object.add(variable: "kp0", value: kp0)
        }
        
        if let kp1 = retrieve(kp1) {
            object.add(variable: "kp1", value: kp1)
        }
        
        if let kp2 = retrieve(kp2) {
            object.add(variable: "kp2", value: kp2)
        }
        
        if let kp3 = retrieve(kp3) {
            object.add(variable: "kp3", value: kp3)
        }
        
        if let kp4 = retrieve(kp4) {
            object.add(variable: "kp4", value: kp4)
        }
        
        if let kp5 = retrieve(kp5) {
            object.add(variable: "kp5", value: kp5)
        }
        
        if let kp6 = retrieve(kp6) {
            object.add(variable: "kp6", value: kp6)
        }
        
        if let kp7 = retrieve(kp7) {
            object.add(variable: "kp7", value: kp7)
        }
        
        return object
    }
    
    func values<KP0, KP1, KP2, KP3, KP4, KP5, KP6, KP7, KP8>
        (
        _ kp0: KeyPath<Self, KP0>,
        _ kp1: KeyPath<Self, KP1>,
        _ kp2: KeyPath<Self, KP2>,
        _ kp3: KeyPath<Self, KP3>,
        _ kp4: KeyPath<Self, KP4>,
        _ kp5: KeyPath<Self, KP5>,
        _ kp6: KeyPath<Self, KP6>,
        _ kp7: KeyPath<Self, KP7>,
        _ kp8: KeyPath<Self, KP8>
    ) -> Object {
        let object = Object()
        
        if let kp0 = retrieve(kp0) {
            object.add(variable: "kp0", value: kp0)
        }
        
        if let kp1 = retrieve(kp1) {
            object.add(variable: "kp1", value: kp1)
        }
        
        if let kp2 = retrieve(kp2) {
            object.add(variable: "kp2", value: kp2)
        }
        
        if let kp3 = retrieve(kp3) {
            object.add(variable: "kp3", value: kp3)
        }
        
        if let kp4 = retrieve(kp4) {
            object.add(variable: "kp4", value: kp4)
        }
        
        if let kp5 = retrieve(kp5) {
            object.add(variable: "kp5", value: kp5)
        }
        
        if let kp6 = retrieve(kp6) {
            object.add(variable: "kp6", value: kp6)
        }
        
        if let kp7 = retrieve(kp7) {
            object.add(variable: "kp7", value: kp7)
        }
        
        if let kp8 = retrieve(kp8) {
            object.add(variable: "kp8", value: kp8)
        }
        
        return object
    }
    
    func values<KP0, KP1, KP2, KP3, KP4, KP5, KP6, KP7, KP8, KP9>
        (
        _ kp0: KeyPath<Self, KP0>,
        _ kp1: KeyPath<Self, KP1>,
        _ kp2: KeyPath<Self, KP2>,
        _ kp3: KeyPath<Self, KP3>,
        _ kp4: KeyPath<Self, KP4>,
        _ kp5: KeyPath<Self, KP5>,
        _ kp6: KeyPath<Self, KP6>,
        _ kp7: KeyPath<Self, KP7>,
        _ kp8: KeyPath<Self, KP8>,
        _ kp9: KeyPath<Self, KP9>
    ) -> Object {
        let object = Object()
        
        if let kp0 = retrieve(kp0) {
            object.add(variable: "kp0", value: kp0)
        }
        
        if let kp1 = retrieve(kp1) {
            object.add(variable: "kp1", value: kp1)
        }
        
        if let kp2 = retrieve(kp2) {
            object.add(variable: "kp2", value: kp2)
        }
        
        if let kp3 = retrieve(kp3) {
            object.add(variable: "kp3", value: kp3)
        }
        
        if let kp4 = retrieve(kp4) {
            object.add(variable: "kp4", value: kp4)
        }
        
        if let kp5 = retrieve(kp5) {
            object.add(variable: "kp5", value: kp5)
        }
        
        if let kp6 = retrieve(kp6) {
            object.add(variable: "kp6", value: kp6)
        }
        
        if let kp7 = retrieve(kp7) {
            object.add(variable: "kp7", value: kp7)
        }
        
        if let kp8 = retrieve(kp8) {
            object.add(variable: "kp8", value: kp8)
        }
        
        if let kp9 = retrieve(kp9) {
            object.add(variable: "kp9", value: kp9)
        }
        
        return object
    }
}
