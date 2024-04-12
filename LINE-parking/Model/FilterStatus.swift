//
//  FilterStatus.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import Foundation

class FilterStatus: ObservableObject {
    var status: [Bool] = [true, true, true, true]
    
    func toggleStatus(type: RemainingType) {
        switch type {
        case .LARGE:
            status[0].toggle()
        case .SMALL:
            status[1].toggle()
        case .DISABLE:
            status[2].toggle()
        case .SCOOTER:
            status[3].toggle()
        }
    }
    
    func getStatus(type: RemainingType) -> Bool {
        switch type {
        case .LARGE:
            return status[0]
        case .SMALL:
            return status[1]
        case .DISABLE:
            return status[2]
        case .SCOOTER:
            return status[3]
        }
    }
}
