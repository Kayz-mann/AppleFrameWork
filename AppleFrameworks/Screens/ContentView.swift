//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Balogun Kayode on 20/06/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
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
                ContentDetail(viewModel: ContentDetailViewModel(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView))
            }
    .padding()
    }
}

#Preview {
    ContentView()
}

