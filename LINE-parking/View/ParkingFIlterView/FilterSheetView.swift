//
//  FilterSheetView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct FilterSheetView: View {
    @Binding var showFilter: Bool
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .blur(radius: 36)
            
            VStack {
                SheetTitleBarView(showFilter: $showFilter)
                FilterItemListView()
                SheetDoneButton(showFilter: $showFilter)
            }
        }
    }
}
