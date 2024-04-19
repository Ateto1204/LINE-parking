//
//  ApiController.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import Foundation

class ApiController: ObservableObject {
    @Published var parkingSpots: [ParkingSpot] = []
    @Published var internetStatus = true
    private let apiUrl = "https://citypark.tainan.gov.tw/App/parking.ashx?verCode=5177E3481D&type=1&ftype=1&exportTo=2"

    func fetchData() async {
        if let url = URL(string: apiUrl) {
            Task {
                do {
                    let (data, _) = try await URLSession.shared.data(from: url)
                    internetStatus = true
                    let decoder = JSONDecoder()
                    let spots = try decoder.decode([ParkingData].self, from: data)
                    DispatchQueue.main.async {
                        for spot in spots {
                            self.parkingSpots.append(ParkingSpot(spot: spot, liked: false))
                        }
                    }
                } catch {
                    let errorCode = (error as NSError).code
                    if errorCode == -1009 {
                        internetStatus = false
                    }
                }
            }
        }
    }
}
