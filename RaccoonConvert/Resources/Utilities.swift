//
//  Utilities.swift
//  RaccoonConvert
//
//  Created by Smith, Nathanael on 12/12/23.
//

import Foundation

let DECIMAL: Int = 0
let HEX: Int = 1
let BINARY: Int = 2
let OCTAL: Int = 3

// Decimal.
func toDecimal(value: Int) -> String?
{
    let converted: String? = String(value)
    return converted
}

func fromDecimal(value: String) -> Int?
{
    let converted: Int? = Int(value)
    return converted
}

// Hex.
func toHex(value: Int) -> String?
{
    let converted: String? = String(value, radix: 16)
    return converted
}

func fromHex(value: String) -> Int?
{
    let converted: Int? = Int(value, radix: 16)
    return converted
}

// Binary.
func toBinary(value: Int) -> String?
{
    let converted: String? = String(value, radix: 2)
    return converted
}

func fromBinary(value: String) -> Int?
{
    let converted: Int? = Int(value, radix: 2)
    return converted
}

// Octal.
func toOctal(value: Int) -> String?
{
    let converted: String? = String(value, radix: 8)
    return converted
}

func fromOctal(value: String) -> Int?
{
    let converted: Int? = Int(value, radix: 8)
    return converted
}

let toCallbacks: [(Int) -> String?] = [toDecimal, toHex, toBinary, toOctal]
let fromCallbacks: [(String) -> Int?] = [fromDecimal, fromHex, fromBinary, fromOctal]

// The magically funny funny converting thingy.
func convertFormat(from fromType: Int, to toType: Int, value: String?) -> String
{
    var result: String = ""
    var valueNum: Int = 0
    
    if let unwrapped = fromCallbacks[fromType](value!)
    {
        valueNum = unwrapped
    }
    else
    {
        return "Error converting value"
    }
    
    if let unwrapped = toCallbacks[toType](valueNum)
    {
        result = String(unwrapped)
    }
    else
    {
        return "Error formatting output"
    }
    
    return result
}
