//
//  ContentView.swift
//  RaccoonConvert
//
//  Created by Smith, Nathanael on 12/12/23.
//

import SwiftUI

struct RaccoonConvertView: View
{
    var body: some View
    {
        ZStack
        {
            Image("raccoonBackground")
                .resizable()
            ConverterView()
        }
    }
}

#Preview
{
    RaccoonConvertView()
}
