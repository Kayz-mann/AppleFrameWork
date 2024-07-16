//
//  ContentDetail.swift
//  AppleFrameworks
//
//  Created by Balogun Kayode on 21/06/2024.
//

import SwiftUI

struct ContentDetail: View {
    @ObservedObject var viewModel: ContentDetailViewModel

    var body: some View {
        VStack {
            XDissmissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            
            Spacer()
            
            FrameWorkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString)!, label: {
                AppButton(buttonText: "Learn More")

            })
            
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                AppButton(buttonText: "Learn More")
//            }
            
//            .sheet(isPresented: $viewModel.isShowingSafariView) {
//                SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "https://www.github.com")!)
//            }
            .padding()
        }
    }
}

struct ContentDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetail(viewModel: ContentDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
    }
}
