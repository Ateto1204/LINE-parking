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
    
    var body: some View {
        ZStack {
            if controller.internetStatus == false {
                WifiSlashView()
            } else if parkingSpots.count > 0 {
                List {
                    ForEach(parkingSpots.indices) { item in
                        if filter(spot: parkingSpots[item].spot) {
                            HStack {
                                Button {
                                    parkingSpots[item].liked.toggle()
                                    appStatus.toggleLoveSpot(spot: parkingSpots[item])
                                } label: {
                                    Image(systemName: appStatus.isLiked(spot: parkingSpots[item]) ? "heart.fill" : "heart")
                                        .foregroundColor(.red)
                                        .opacity(appStatus.isLiked(spot: parkingSpots[item]) ? 1 : 0.5)
                                        .padding(.trailing)
                                }
                                Button {
                                    
                                } label: {
                                    VStack(alignment: .leading, spacing: 12) {
                                        Text(parkingSpots[item].spot.name)
                                            .foregroundColor(.black)
                                            .font(.subheadline)
                                        RemainingBarView(parkingSpot: parkingSpots[item].spot)
                                    }
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
    
    func filter(spot: ParkingData) -> Bool {
        if appStatus.getFilterStatus(type: .LARGE) {
            if spot.largeCar == 0 {
                return false
            }
        }
        if appStatus.getFilterStatus(type: .SMALL) {
            if spot.smallCar == 0 {
                return false
            }
        }
        if appStatus.getFilterStatus(type: .DISABLE) {
            if spot.disableCar == 0 {
                return false
            }
        }
        if appStatus.getFilterStatus(type: .SCOOTER) {
            if spot.motorcycle == 0 {
                return false
            }
        }
        return true
    }
}
