//
//  ProfileView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        Text("Profile")
            .font(.title)
            .bold()
            .containerRelativeFrame([.horizontal, .vertical])
            .background(Color.profileViewBackground)
    }
}

#Preview {
    ProfileView()
}
