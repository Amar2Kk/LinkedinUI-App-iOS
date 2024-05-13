//
//  ProfileAndPostView.swift
//  LinkedinUI
//
//  Created by Ammar Abbas on 13/05/2024.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading){
            SearchBarView()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            Divider()
            HStack{
                Image(systemName: "photo")
                    .foregroundStyle(Color(.blue))
                Text("Photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundStyle(Color(.green))
                Text("Video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundStyle(Color(.orange))
                Text("Calendar")
            }.padding(.horizontal)
        }
    }
}

#Preview {
    ProfileAndPostView()
}
