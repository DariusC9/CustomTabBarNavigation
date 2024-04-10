//
//  HistoryView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack {
            Text("History")
                .font(.title)
                .bold()
                .padding()
            Button {
                print("edit")
            } label: {
                Text("Edit")
            }
            .buttonStyle(.bordered)
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(Color.historyViewBackground)
    }
}

#Preview {
    HistoryView()
}
