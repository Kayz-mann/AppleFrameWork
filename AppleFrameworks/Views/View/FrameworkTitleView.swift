//
//  FrameworkTitleView.swift
//  AppleFrameworks
//
//  Created by Balogun Kayode on 26/06/2024.
//

import SwiftUI


struct FrameWorkTitleView: View {
    let framework: Framework
     var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 60, height: 60)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
