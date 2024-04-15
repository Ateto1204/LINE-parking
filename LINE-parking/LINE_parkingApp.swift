//
//  LINE_parkingApp.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

@main
struct LINE_parkingApp: App {
    @StateObject var appStatus = APPStatus()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appStatus)
        }
    }
}

#Preview {
    Image("AppIcon")
}
