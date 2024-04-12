//
//  SheetTitleBarView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct SheetTitleBarView: View {
    @Binding var showFilter: Bool
    var body: some View {
        ZStack {
            Text("Choose what you like")
                .font(.title2)
                .bold()
            CloseSheetButton(showFilter: $showFilter)
        }
        .offset(y: 6.2)
    }
}
