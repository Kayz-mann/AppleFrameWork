//
//  AppButton.swift
//  AppleFrameworks
//
//  Created by Balogun Kayode on 21/06/2024.
//

import Foundation
import SwiftUI



struct AppButton: View {
    var buttonText: String
    
     var body: some View {
        Text(buttonText)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(8)

    }
}


