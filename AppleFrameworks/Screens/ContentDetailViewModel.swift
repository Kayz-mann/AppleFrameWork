//
//  ContentDetailViewModel.swift
//  AppleFrameworks
//
//  Created by Balogun Kayode on 16/07/2024.
//

import SwiftUI

final class ContentDetailViewModel: ObservableObject {
    
    let framework: Framework
    var isShowingDetailView: Binding<Bool>
    @Published var isShowingSafariView = false
    
    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
        
    }
    
    
}
