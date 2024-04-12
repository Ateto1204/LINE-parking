//
//  ParkingSpot.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import Foundation

struct ParkingSpot: Codable {
    var name: String
    var address: String
    var phone: String?
    var largeCar: Int
    var smallCar: Int
    var disableCar: Int
    var motorcycle: Int
    
    enum CodingKeys: String, CodingKey {
        case name = "停車場名稱"
        case address = "停車場地址"
        case phone = "停車場電話"
        case largeCar = "一般大型車"
        case smallCar = "一般小型車"
        case disableCar = "身障者小型車"
        case motorcycle = "一般機車"
    }
}
