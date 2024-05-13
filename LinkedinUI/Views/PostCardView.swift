//
//  PostCardView.swift
//  LinkedinUI
//
//  Created by Ammar Abbas on 12/05/2024.
//

import SwiftUI

struct SocialView {
    var ids: Int
    var image: String
    var title: String
}

var socialView: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup", title: "Likes"),
    .init(ids: 1, image: "text.bubble", title: "Comment"),
    .init(ids: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(ids: 3, image: "paperplane.fill", title: "Send")
]

let samplePostData = PostData(id: 1, Image: "02", title: "Ammar Abbas", followers: 52, profileImage: "1")

struct PostCardView: View{

    
    let data: PostData
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray.opacity(0.3))
                .frame(maxWidth: .infinity, maxHeight: 5)
                .ignoresSafeArea(.all)
            HStack(alignment: .center){
                Image(data.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .leading)
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundStyle(Color(.gray))
                    Text("8 min ago")
                        .font(.caption)
                        .foregroundStyle(Color(.gray))
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            Text("Looking for a new course on iOS with SwiftUI.")
                .padding(.horizontal)
            Image(data.Image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    PostCardView(data: samplePostData)
}
