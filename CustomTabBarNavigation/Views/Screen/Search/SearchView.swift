//
//  SearchView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack {
            Text("Search")
                .font(.title)
                .bold()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.searchViewBackground.ignoresSafeArea())
    }
}

#Preview {
    SearchView()
}
