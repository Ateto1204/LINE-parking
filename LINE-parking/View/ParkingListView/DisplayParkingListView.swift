//
//  DisplayParkingListView.swift
//  Tainan-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct DisplayParkingListView: View {
    @EnvironmentObject var appStatus: APPStatus
    
    @ObservedObject var controller = Controller()
    
    @State var parkingSpots: [ParkingSpot] = []
    @State var showParkingData = false
    @State var sheetIdx = 0
    
    var body: some View {
        ZStack {
            if controller.internetStatus == false {
                WifiSlashView()
            } else if parkingSpots.count > 0 {
                List {
                    ForEach(parkingSpots.indices) { item in
                        if filter(spot: parkingSpots[item].spot) {
                            HStack {
                                Image(systemName: appStatus.isLiked(spot: parkingSpots[item]) ? "heart.fill" : "heart")
                                    .foregroundColor(.red)
                                    .opacity(appStatus.isLiked(spot: parkingSpots[item]) ? 1 : 0.5)
                                    .padding(.trailing)
                                Button {
                                    self.sheetIdx = item
                                    self.showParkingData = true
                                } label: {
                                    VStack(alignment: .leading, spacing: 12) {
                                        Text(parkingSpots[item].spot.name)
                                            .foregroundColor(.black)
                                            .font(.subheadline)
                                        RemainingBarView(parkingSpot: parkingSpots[item].spot)
                                    }
                                }
                                .sheet(isPresented: $showParkingData) {
                                    ParkingDataView(spots: $parkingSpots, idx: $sheetIdx, show: $showParkingData)
                                }
                            }
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
