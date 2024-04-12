//
//  WifiSlashView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct WifiSlashView: View {
    var body: some View {
        VStack(spacing: 15) {
            Image(systemName: "wifi.slash")
                .resizable()
                .scaledToFit()
                .frame(width: 65)
                .foregroundColor(.gray)
            Text("No Internet Connect")
                .foregroundColor(.gray)
        }
    }
}
