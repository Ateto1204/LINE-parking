//
//  ParkingDataView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/13.
//

import SwiftUI

struct ParkingDataView: View {
    @EnvironmentObject var appStatus: APPStatus
    @Binding var spots: [ParkingSpot]
    @Binding var idx: Int
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            VStack {
                CloseSheetButton(showFilter: $show)
                Spacer()
            }
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            ShareLink("", item: appStatus.shareInfo(spot: spots[idx].spot))
                            Text(spots[idx].spot.name)
                                .font(.title)
                                .bold()
                            Button {
                                spots[idx].liked.toggle()
                                appStatus.toggleLoveSpot(spot: spots[idx])
                            } label: {
                                Image(systemName: appStatus.isLiked(spot: spots[idx]) ? "heart.fill" : "heart")
                                    .foregroundColor(.red)
                                    .opacity(appStatus.isLiked(spot: spots[idx]) ? 1 : 0.5)
                                    .padding(.leading)
                            }
                            
                        }
                        Text("地址：\(spots[idx].spot.address)")
                        
                        Text("大型車：\(spots[idx].spot.largeCar)")
                        Text("小型車：\(spots[idx].spot.smallCar)")
                        Text("無障礙：\(spots[idx].spot.disableCar)")
                        Text("機慢車：\(spots[idx].spot.motorcycle)")
                    }
                    .padding()
                    Spacer()
                }
                .padding()
                Button {
                    show = false
                } label: {
                    Text("CLOSE")
                        .foregroundColor(.white)
                        .font(.callout)
                        .bold()
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 11)
                                .foregroundColor(.gray)
                                .shadow(radius: 4)
                        )
                }
            }
        }
    }
}
