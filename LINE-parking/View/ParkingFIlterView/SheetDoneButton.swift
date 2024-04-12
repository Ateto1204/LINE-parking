//
//  SheetDoneButton.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct SheetDoneButton: View {
    @Binding var showFilter: Bool
    var body: some View {
        VStack {
            Button {
                showFilter = false
            } label: {
                Text("DONE")
                    .foregroundColor(.white)
                    .font(.title3)
                    .bold()
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 11)
                            .foregroundColor(.green)
                            .shadow(radius: 4)
                    )
            }
        }
    }
}
