//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Balogun Kayode on 20/06/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks, id: \.id) {
                        framework in
                        FrameWorkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }

                }
            }.scrollIndicators(.hidden)
        }.navigationTitle("Apple Frameworks")
            .fullScreenCover(isPresented: $viewModel.isShowingDetailView) {
                ContentDetail(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
    .padding()
    }
}

#Preview {
    ContentView()
}

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
