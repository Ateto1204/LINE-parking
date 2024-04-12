//
//  ParkingListView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct ParkingListView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        ZStack {
            Spacer()
                .frame(height: .infinity)
            if networkManager.isNetworkAvailable {
                DisplayParkingListView()
            } else {
                WifiSlashView()
            }
        }
    }
}
