//
//  TabScreenView.swift
//  LinkedinUI
//
//  Created by Ammar Abbas on 13/05/2024.
//

import SwiftUI

struct TabScreenView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            MyNetworkView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Network")
                }
            Text("Post")
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("Post")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Notifiactions")
                }
            Text("Jobs")
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
        }
    }
}

#Preview {
    TabScreenView()
}
