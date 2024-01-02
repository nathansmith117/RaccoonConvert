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
    @State private var convertedValue: String = ""
    
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
            
            Button("Convert", action: convertAction)
            TextField("From", text: $fromValue)
            Text(convertedValue)
        }
        .padding()
        .frame(maxHeight: 300)
    }
    
    func convertAction() -> Void
    {
        //startCall
        convertedValue = convertFormat(from: fromType, to: toType, value: fromValue)
        //endCall
    }
}

#Preview
{
    ConverterView()
}
