//
//  LoveList.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/13.
//

import SwiftUI

struct LoveList: View {
    @EnvironmentObject var appStatus: APPStatus
    var body: some View {
        TitleBarView(titleName: "My Parking")
        if appStatus.LoveSpots.count > 0 {
            List {
                ForEach(appStatus.LoveSpots.indices) { item in
                    HStack {
                        Image(systemName: appStatus.isLiked(spot: appStatus.LoveSpots[item]) ? "heart.fill" : "heart")
                            .foregroundColor(.red)
                            .opacity(appStatus.isLiked(spot: appStatus.LoveSpots[item]) ? 1 : 0.5)
                            .padding(.trailing)
                        VStack(alignment: .leading, spacing: 12) {
                            Text(appStatus.LoveSpots[item].spot.name)
                                .foregroundColor(.black)
                                .font(.subheadline)
                            RemainingBarView(parkingSpot: appStatus.LoveSpots[item].spot)
                        }
                        Spacer()
                        ShareLink("", item: appStatus.shareInfo(spot: appStatus.LoveSpots[item].spot))
                    }
                }
            }
        } else {
            ZStack {
                List {
                    
                }
                VStack(alignment: .center, spacing: 21) {
                    Image("寶箱怪")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .clipShape(Circle())
                        .opacity(0.7)
                        .shadow(radius: 1.2)
                    VStack(spacing: 5) {
                        Text("好黑喔～")
                            .foregroundColor(.gray)
                            .opacity(0.7)
                        Text("趕快去收藏更多停車場資訊吧")
                            .foregroundColor(.gray)
                            .opacity(0.7)
                    }
                }
                .padding(.bottom)
            }
        }
    }
}
