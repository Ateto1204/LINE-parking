//
//  DisplayParkingListView.swift
//  Tainan-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct DisplayParkingListView: View {
    @EnvironmentObject var appStatus: APPStatus
    
    @ObservedObject var controller = ApiController()
    
    @State var parkingSpots: [ParkingSpot] = []
    @State var hasResponse: Bool = false
    
    var body: some View {
        ZStack {
            if controller.internetStatus == false {
                WifiSlashView()
            } else if hasResponse {
                if parkingSpots.count > 0 {
                    List {
                        ForEach(parkingSpots.indices) { item in
                            if filter(spot: parkingSpots[item].spot) {
                                HStack {
                                    Image(systemName: appStatus.isLiked(spot: parkingSpots[item]) ? "heart.fill" : "heart")
                                        .foregroundColor(.red)
                                        .opacity(appStatus.isLiked(spot: parkingSpots[item]) ? 1 : 0.5)
                                        .padding(.trailing)
                                    Button {
                                        appStatus.displaySpot = parkingSpots[item]
                                        appStatus.lastAppStatus = .LIST
                                        appStatus.appStatus = .CONTENT
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
                    EmptyLoveList()
                }
            } else {
                ProgressView()
            }
            FilterView()
        }
        .onAppear {
            hasResponse = false
            Task {
                await controller.fetchData()
            }
        }
        .onChange(of: controller.parkingSpots.count) {
            self.parkingSpots = controller.parkingSpots
            hasResponse = true
        }
    }
 
}
