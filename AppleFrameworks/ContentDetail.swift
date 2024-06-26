//
//  ContentDetail.swift
//  AppleFrameworks
//
//  Created by Balogun Kayode on 21/06/2024.
//

import SwiftUI

struct ContentDetail: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false

    var body: some View {  // Corrected from `some view` to `some View`
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false

                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }            }
       
            Spacer()
            FrameWorkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
               AppButton(buttonText: "Learn More")
            }
        }.sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string:framework.urlString) ?? URL(string: "https://www.github.com")!)
        })
        
        .padding()
    }
}

struct ContentDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetail(framework: MockData.sampleFramework, isShowingDetailView:.constant(true)  )
    }
}

