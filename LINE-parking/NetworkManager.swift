//
//  NetworkManager.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import Foundation
import Network

class NetworkManager: ObservableObject {
    let monitor = NWPathMonitor()
    @Published var isNetworkAvailable: Bool = false
    
    init() {
        monitor.pathUpdateHandler = { path in
            self.isNetworkAvailable = path.status == .satisfied
        }
        monitor.start(queue: DispatchQueue.global())
    }
}
