//
//  RemainingItemView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct RemainingItemView: View {
    let type: RemainingType
    let spot: ParkingSpot
    let icon: String
    let remaining: Int
    
    init(type: RemainingType, spot: ParkingSpot) {
        self.type = type
        self.spot = spot
        
        switch type {
        case .LARGE:
            self.icon = "bus"
            self.remaining = spot.largeCar
        case .SMALL:
            self.icon = "car"
            self.remaining = spot.smallCar
        case .DISABLE:
            self.icon = "figure.roll"
            self.remaining = spot.disableCar
        case .SCOOTER:
            self.icon = "scooter"
            self.remaining = spot.motorcycle
        }
    }
    
    var body: some View {
        HStack(spacing: 15) {
            if remaining > 0 {
                HStack {
                    Group {
                        Image(systemName: icon)
                        Text("\(remaining)")
                    }
                    .foregroundColor(.gray)
                }
            }
        }
    }
}
