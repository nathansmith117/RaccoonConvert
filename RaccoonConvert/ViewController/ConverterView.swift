//
//  ConverterView.swift
//  RaccoonConvert
//
//  Created by Smith, Nathanael on 12/12/23.
//

import SwiftUI

struct ConverterView: View
{
    @State private var fromType: Int = DECIMAL
    @State private var toType: Int = HEX
    
    @State private var fromValue: String = ""
    
    var body: some View
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
            
            TextField("From", text: $fromValue)
        }
    }
}

#Preview
{
    ConverterView()
}
