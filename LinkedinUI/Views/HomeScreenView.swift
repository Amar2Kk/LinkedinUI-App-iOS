//
//  HomeScreenView.swift
//  LinkedinUI
//
//  Created by Ammar Abbas on 13/05/2024.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack{
            ProfileAndPostView()
            PostView()
        }
    }
}

#Preview {
    HomeScreenView()
}
