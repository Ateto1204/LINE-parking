//
//  ContentView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            TitleBarView(titleName: "LINE Parking")
            ParkingListView()
        }
    }
}

#Preview {
    ContentView()
}
