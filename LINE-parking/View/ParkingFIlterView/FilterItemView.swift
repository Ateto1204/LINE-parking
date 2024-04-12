//
//  FilterItemView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct FilterItemView: View {
    @State var isPicked = true
    let title: String
    var body: some View {
        HStack(spacing: 15) {
            Button {
                isPicked.toggle()
            } label: {
                Image(systemName: isPicked ? "checkmark.square.fill" : "square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 17)
            }
            Text(title)
                .font(.title3)
        }
    }
}
