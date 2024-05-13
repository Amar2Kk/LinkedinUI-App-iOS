//
//  MyNetworkView.swift
//  LinkedinUI
//
//  Created by Ammar Abbas on 12/05/2024.
//

import SwiftUI

var networkData: [NetworkModel] = [
    .init(id: 0, name: "Marry", jobTitle: "SDE at Paytm", mutual: 34, image: "00"),
    .init(id: 1, name: "Peter", jobTitle:  "Assistant Manager", mutual: 45, image: "01"),
    .init(id: 2, name: "Jenny", jobTitle:  "SDE at Ginger ", mutual: 67, image: "02"),
    .init(id: 3, name: "Sara", jobTitle:  "open to work", mutual: 103, image: "03"),
    .init(id: 4, name: "Kia", jobTitle:  "GET at HCL", mutual: 12, image: "04"),
    .init(id: 5, name: "Shristi", jobTitle:  "Student", mutual: 78, image: "05"),
    .init(id: 6, name: "Rachel", jobTitle:  "intern at iNeuron", mutual: 90, image: "00"),
    .init(id: 7, name: "John", jobTitle:  "HR at Intel", mutual: 34, image: "01"),
    .init(id: 8, name: "Tiya", jobTitle:  "purchase Engineer", mutual: 50, image: "02"),
    .init(id: 9, name: "Pheobe", jobTitle:  "Product Manager", mutual: 86, image: "03"),
    .init(id: 10, name: "Monica", jobTitle:  "Data Analyst", mutual: 55, image: "04"),
    .init(id: 11, name: "Joe", jobTitle:  "Software Development intern", mutual: 42, image: "05"),
    .init(id: 12, name: "Charel", jobTitle:  "SDE-II ", mutual: 30, image: "00"),
    .init(id: 13, name: "Chandler", jobTitle:  "Mobile Developer", mutual: 71, image: "01"),
    .init(id: 14, name: "Max", jobTitle:  "QA", mutual: 95, image: "02"),
    .init(id: 15, name: "Nancy", jobTitle:  "Frontend Developer", mutual: 18, image: "03")
    
]


struct MyNetworkView: View {
    var body: some View {
        VStack {
            SearchBarView()
            HStack{
                Text("Manage my network")
                    .font(.body)
                    .foregroundStyle(Color(.blue))
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(Color(.gray))
            }.padding(.horizontal)
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(maxWidth: .infinity, maxHeight: 5)
                .ignoresSafeArea(.all)
        
            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    Text("Invitations")
                        .font(.body)
                        .foregroundStyle(Color(.blue))
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundStyle(Color(.gray))
                }.padding(.horizontal)
                Divider()
                ForEach(networkData, id: \.id) { user in
                    InvitationCardView(Data: user)
                    Divider()
                }
            }
        }
    }
}

#Preview {
    MyNetworkView()
}
