//
//  SearchView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        Text("Search")
            .font(.title)
            .bold()
            .containerRelativeFrame([.horizontal, .vertical])
            .background(Color.searchViewBackground)
    }
}

#Preview {
    SearchView()
}
