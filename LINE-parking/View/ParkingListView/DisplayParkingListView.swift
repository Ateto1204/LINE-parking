//
//  DisplayParkingListView.swift
//  Tainan-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct DisplayParkingListView: View {
    @ObservedObject var controller = Controller()
    @State var parkingSpots: [ParkingSpot] = []
    var body: some View {
        ZStack {
            if controller.internetStatus == false {
                WifiSlashView()
            } else if parkingSpots.count > 0 {
                List {
                    ForEach(parkingSpots.indices) { item in
                        VStack(alignment: .leading, spacing: 12) {
                            Text(parkingSpots[item].name)
                                .font(.subheadline)
                            RemainingBarView(parkingSpot: parkingSpots[item])
                        }
                    }
                }
            } else {
                ProgressView()
            }
            FilterView()
        }
        .onAppear {
            controller.fetchData()
        }
        .onChange(of: controller.parkingSpots.count) {
            self.parkingSpots = controller.parkingSpots
        }
    }
}
