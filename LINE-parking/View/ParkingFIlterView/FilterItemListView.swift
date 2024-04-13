//
//  FilterItemListView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct FilterItemListView: View {
    var body: some View {
        List {
            FilterItemView(title: "Large Car", type: .LARGE)
            FilterItemView(title: "Small Car", type: .SMALL)
            FilterItemView(title: "Disable Car", type: .DISABLE)
            FilterItemView(title: "Scooter Car", type: .SCOOTER)
        }
    }
}
