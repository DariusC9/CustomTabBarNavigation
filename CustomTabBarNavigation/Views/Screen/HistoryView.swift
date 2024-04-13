//
//  HistoryView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("History")
                    .font(.title)
                    .bold()
                    .padding()
                NavigationLink(destination: HistoryDetailsView()) {
                    Text("Edit")
                }
                .buttonStyle(.bordered)
            }
            .containerRelativeFrame([.horizontal, .vertical])
            .background(Color.historyViewBackground)
        }
    }
}

#Preview {
    HistoryView()
}
