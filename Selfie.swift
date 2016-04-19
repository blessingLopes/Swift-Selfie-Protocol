//
//  Selfie.swift
//  
//
//  Created by Manuel Carlos on 12/04/16.




///  Objects that adopt this protocol will be able to display their properties.
public protocol Selfie: CustomStringConvertible {}


extension Selfie {
    
    public var description: String {
        let mirror = Mirror(reflecting: self)
        return "\(mirror.subjectType)( \(mirror.children.map({ "\($0!): \($1) "}).joinWithSeparator(", ")))"
    }
    
}


