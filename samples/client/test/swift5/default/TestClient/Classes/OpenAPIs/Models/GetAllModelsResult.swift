//
// GetAllModelsResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Response object containing AllPrimitives object */
public struct GetAllModelsResult: Codable { 


    public var myPrimitiveArray: [AllPrimitives]?
    public var myPrimitive: AllPrimitives?
    public var myVariableNameTest: VariableNameTest?

    public init(myPrimitiveArray: [AllPrimitives]?, myPrimitive: AllPrimitives?, myVariableNameTest: VariableNameTest?) {
        self.myPrimitiveArray = myPrimitiveArray
        self.myPrimitive = myPrimitive
        self.myVariableNameTest = myVariableNameTest
    }

}
