//
//  ContentView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appStatus: APPStatus
    var body: some View {
        switch appStatus.appStatus {
        case .HOME:
            HomeView()
        case .LIST:
            ParkingList()
        case .STAR:
            LoveList()
        }
    }
}

#Preview {
    ContentView()
}
