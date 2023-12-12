//
//  ConverterView.swift
//  RaccoonConvert
//
//  Created by Smith, Nathanael on 12/12/23.
//

import SwiftUI

struct ConverterView: View
{
    private let DECIMAL: Int = 0
    private let HEX: Int = 1
    private let BINARY: Int = 2
    private let OCTAL: Int = 3
    
    @State private var fromType: Int = 0
    @State private var toType: Int = 1
    
    var body: some View
    {
        HStack
        {
            List
            {
                Picker("From", selection: $fromType)
                {
                    Text("Decimal").tag(DECIMAL)
                    Text("Hex").tag(HEX)
                    Text("Binary").tag(BINARY)
                    Text("Octal").tag(OCTAL)
                }
                
                Picker("To", selection: $toType)
                {
                    Text("Decimal").tag(DECIMAL)
                    Text("Hex").tag(HEX)
                    Text("Binary").tag(BINARY)
                    Text("Octal").tag(OCTAL)
                }
            }
        }
    }
}

#Preview
{
    ConverterView()
}
