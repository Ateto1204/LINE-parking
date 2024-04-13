//
//  Filter.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/13.
//

import Foundation

extension DisplayParkingListView {
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
