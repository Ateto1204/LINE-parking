//
//  CloseSheetButton.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct CloseSheetButton: View {
    @Binding var showFilter: Bool
    var body: some View {
        HStack {
            Spacer()
            Button {
                showFilter = false
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 17)
                    .foregroundColor(.gray)
                    .shadow(radius: 0.6)
                    .padding()
            }
        }
    }
}
