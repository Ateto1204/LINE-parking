//
//  FilterItemView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct FilterItemView: View {
    @EnvironmentObject var appStatus: APPStatus
    
    let title: String
    let type: RemainingType
    
    var body: some View {
        HStack(spacing: 15) {
            Button {
                appStatus.toggleFilterStatus(type: type)
            } label: {
                Image(systemName: appStatus.getFilterStatus(type: type) ? "checkmark.square.fill" : "square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 17)
            }
            Text(title)
                .font(.title3)
        }
    }
}
