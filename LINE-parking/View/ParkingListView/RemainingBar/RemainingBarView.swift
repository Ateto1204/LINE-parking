//
//  RemainingBarView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct RemainingBarView: View {
    var parkingSpot: ParkingData
    var body: some View {
        HStack {
            RemainingItemView(type: .LARGE, spot: parkingSpot)
            RemainingItemView(type: .SMALL, spot: parkingSpot)
            RemainingItemView(type: .DISABLE, spot: parkingSpot)
            RemainingItemView(type: .SCOOTER, spot: parkingSpot)
        }
    }
}
