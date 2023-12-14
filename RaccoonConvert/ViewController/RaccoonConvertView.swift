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
        NavigationStack
        {
            ZStack
            {
                Image("raccoonBackground")
                    .resizable()
                
                VStack
                {
                    ConverterView()
                    NavigationLink("🦝", destination: CoonShootView())
                }
            }
        }
    }
}

#Preview
{
    RaccoonConvertView()
}
