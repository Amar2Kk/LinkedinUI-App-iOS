//
//  SearchBarView.swift
//  LinkedinUI
//
//  Created by Ammar Abbas on 12/05/2024.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack(alignment: .center){
            Image("demo")
                .resizable()
                .ignoresSafeArea(edges: .all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 60, height: 60)
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(Color(.blue).opacity(0.1))
                .frame(width: 270, height: 40)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(Color(.gray))
                        Spacer()
                    }.padding()
                )
            
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundStyle(Color(.gray))
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding(.trailing)
            
        }.padding(.top)
    }
}

#Preview {
    SearchBarView()
}
