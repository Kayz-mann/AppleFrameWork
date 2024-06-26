//
//  XDissmissButton.swift
//  AppleFrameworks
//
//  Created by Balogun Kayode on 26/06/2024.
//

import SwiftUI

struct XDissmissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
            
        }
    }
}
    
    struct XDissmissButton_Previews: PreviewProvider {
        static var previews: some View {
            XDissmissButton(isShowingDetailView: .constant(false))
        }
    }



