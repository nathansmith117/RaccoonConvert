//
//  Utilities.swift
//  RaccoonConvert
//
//  Created by Smith, Nathanael on 12/12/23.
//

import Foundation

// Decimal, hex, binary, oct.

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
