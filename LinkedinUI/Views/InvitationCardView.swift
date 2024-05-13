//
//  InvitationCardView.swift
//  LinkedinUI
//
//  Created by Ammar Abbas on 12/05/2024.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Ammar Abbas", jobTitle: "Software Developer at Gloscale", mutual: 33, image: "01")

struct InvitationCardView: View {
    var Data: NetworkModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Image(Data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 80, height: 80)
            
            
            VStack(alignment: .leading){
                Text(Data.name)
                    .font(.body)
                    .fontWeight(.semibold)
                Text(Data.jobTitle)
                    .font(.subheadline)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .fontWeight(.medium)
                    .foregroundStyle(Color(.gray).opacity(0.9))
                Text("\(Data.mutual) mutual connections")
                    .font(.caption)
                    .foregroundStyle(Color(.gray).opacity(0.9))
            }
            .frame(width: 150, height: 70, alignment: .leading)
            
            HStack{
                Image(systemName: "xmark.circle")
                    .font(.system(size: 25))
                    .foregroundStyle(Color(.black).opacity(0.4))
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundStyle(Color(.blue))
            }.padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal)
    }
}

#Preview {
    InvitationCardView(Data: sampleData)
}
