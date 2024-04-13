//
//  ParkingDataView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/13.
//

import SwiftUI
import Pow

struct ParkingDataView: View {
    @EnvironmentObject var appStatus: APPStatus
    @State var animating = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        withAnimation {
                            self.animating = false
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + (0.5)) {
                            appStatus.appStatus = appStatus.lastAppStatus
                        }
                    } label: {
                        Text("BACK")
                            .shadow(radius: 1.4)
                    }
                    .padding()
                    Spacer()
                }
                Spacer()
            }
            if animating {
                HStack {
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            ShareLink("", item: appStatus.shareInfo(spot: appStatus.displaySpot.spot))
                            Text(appStatus.displaySpot.spot.name)
                                .font(.title)
                                .bold()
                            Button {
                                withAnimation {
                                    appStatus.displaySpot.liked.toggle()
                                }
                                appStatus.toggleLoveSpot(spot: appStatus.displaySpot)
                            } label: {
                                if appStatus.isLiked(spot: appStatus.displaySpot) {
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.red)
                                        .opacity(1)
                                        .transition(
                                          .movingParts.pop(.red)
                                        )
                                } else {
                                    Image(systemName: "heart")
                                        .foregroundColor(.red)
                                        .opacity(0.5)
                                        .transition(.identity)
                                }
                            }
                            .padding(.leading)
                        }
                        Text("地址：\(appStatus.displaySpot.spot.address)")
                        
                        Text("大型車：\(appStatus.displaySpot.spot.largeCar)")
                        Text("小型車：\(appStatus.displaySpot.spot.smallCar)")
                        Text("無障礙：\(appStatus.displaySpot.spot.disableCar)")
                        Text("機慢車：\(appStatus.displaySpot.spot.motorcycle)")
                    }
                    .padding()
                    Spacer()
                }
                .padding()
                .transition(
                  .asymmetric(
                      insertion: .movingParts.move(
                        angle: .degrees(45)
                      ),
                      removal: .movingParts.move(
                        angle: .degrees(-135)
                      )
                  ).combined(with: .opacity)
                )
                
            }
        }
        .onAppear() {
            withAnimation {
                self.animating = true
            }
        }
    }
}
