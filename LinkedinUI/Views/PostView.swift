//
//  PostView.swift
//  LinkedinUI
//
//  Created by Ammar Abbas on 13/05/2024.
//

import SwiftUI

var postData: [PostData] = [
    .init(id: 0, Image: "0", title: "iNeuron", followers: 4066, profileImage: "00"),
    .init(id: 1, Image: "1", title: "Learnyst", followers: 2345, profileImage: "01"),
    .init(id: 2, Image: "2", title: "Synopsys inc", followers: 1235, profileImage: "02"),
    .init(id: 3, Image: "3", title: "Skill-Lync", followers: 908, profileImage: "03"),
    .init(id: 4, Image: "4", title: "Intel", followers: 1234, profileImage: "04"),
    .init(id: 5, Image: "5", title: "HP", followers: 567, profileImage: "05"),
    .init(id: 6, Image: "6", title: "JungleWorks", followers: 346, profileImage: "00")
    
    ]

struct PostView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center){
                ForEach(postData, id: \.id) { post in
                    PostCardView(data: post)
                    HStack(alignment: .center, spacing: 40){
                        ForEach(socialView, id: \.ids) { data in
                            HStack{
                                Image(systemName: data.image)
                                    .font(.system(size:25))
                            }
                            .foregroundStyle(Color(.black).opacity(0.8))
                            .font(.subheadline)
                        }.padding()
                    }
                }
            }
        }
    }
}

#Preview {
    PostView()
}
