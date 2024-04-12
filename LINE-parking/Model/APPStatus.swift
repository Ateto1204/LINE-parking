//
//  APPStatus.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import Foundation

class APPStatus: ObservableObject {
    enum Status {
        case HOME
        case STAR
        case LIST
    }
    
    @Published var status: Status = .HOME
    
}
