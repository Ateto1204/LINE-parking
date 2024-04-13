//
//  APPStatus.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import Foundation

class APPStatus: ObservableObject {
    enum AppStatus {
        case HOME
        case STAR
        case LIST
        case CONTENT
    }
    
    @Published var appStatus: AppStatus = .HOME
    @Published var lastAppStatus: AppStatus = .HOME
    @Published var fliterStatus: [Bool] = [false, false, false, false]
    @Published var LoveSpots: [ParkingSpot] = []
    @Published var displaySpot = ParkingSpot(spot: ParkingData(name: "", address: "", largeCar: 0, smallCar: 0, disableCar: 0, motorcycle: 0), liked: false)
    
    func toggleFilterStatus(type: RemainingType) {
        switch type {
        case .LARGE:
            fliterStatus[0].toggle()
        case .SMALL:
            fliterStatus[1].toggle()
        case .DISABLE:
            fliterStatus[2].toggle()
        case .SCOOTER:
            fliterStatus[3].toggle()
        }
    }
    
    func getFilterStatus(type: RemainingType) -> Bool {
        switch type {
        case .LARGE:
            return fliterStatus[0]
        case .SMALL:
            return fliterStatus[1]
        case .DISABLE:
            return fliterStatus[2]
        case .SCOOTER:
            return fliterStatus[3]
        }
    }

    func toggleLoveSpot(spot: ParkingSpot) {
        var idx = 0
        var hasContained = false
        for loveSpot in LoveSpots {
            if spot.spot.address == loveSpot.spot.address {
                hasContained = true
                break
            }
            idx += 1
        }
        if hasContained {
            LoveSpots.remove(at: idx)
        } else {
            LoveSpots.append(spot)
        }
    }
    
    func isLiked(spot: ParkingSpot) -> Bool {
        for loveSpot in LoveSpots {
            if loveSpot.spot.address == spot.spot.address {
                return loveSpot.liked
            }
        }
        return false
    }
    
    func shareInfo(spot: ParkingData) -> String {
        return "嘿！這是我在 LINE Parking 上找到的免費停車場：\n\n" +
        "\(spot.name)\n地址：\(spot.address)\n大型車車位：\(spot.largeCar)\n" +
        "小型車車位：\(spot.smallCar)\n無障礙車位：\(spot.disableCar)\n" +
        "機慢車車位：\(spot.motorcycle)\n\n"
    }
}
