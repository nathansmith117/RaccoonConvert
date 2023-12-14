//
//  CoonShootView.swift
//  RaccoonConvert
//
//  Created by Smith, Nathanael on 12/14/23.
//

import SwiftUI
import SpriteKit

struct CoonShootView: View
{
    let width : CGFloat = 300
    let height : CGFloat = 500
    
    private var funnyFunnyCoonShootScene: CoonShootScene
    {
        let scene = CoonShootScene()
        scene.size = CGSize(width: width, height: height)
        scene.scaleMode = .fill
        return scene
    }
    
    var body: some View
    {
        VStack
        {
            Text("Coon Shoot")
            SpriteView(scene: funnyFunnyCoonShootScene)
                .frame(width: width, height: height)
        }
    }
}

#Preview
{
    CoonShootView()
}
