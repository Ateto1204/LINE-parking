//
//  ParkingList.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct ParkingList: View {
    var body: some View {
        VStack(spacing: 0) {
            TitleBarView(titleName: "LINE Parking")
            ParkingListView()
        }
    }
}

struct LoveList: View {
    @EnvironmentObject var appStatus: APPStatus
    var body: some View {
        TitleBarView(titleName: "My Parking")
        List {
            ForEach(appStatus.LoveSpots.indices) { item in
                VStack(alignment: .leading, spacing: 12) {
                    Text(appStatus.LoveSpots[item].spot.name)
                        .foregroundColor(.black)
                        .font(.subheadline)
                    RemainingBarView(parkingSpot: appStatus.LoveSpots[item].spot)
                }
            }
        }
    }
}

#Preview {
    ParkingList()
}
