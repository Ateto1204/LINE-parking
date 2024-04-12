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
            FilterItemView(title: "Large Car")
            FilterItemView(title: "Small Car")
            FilterItemView(title: "Disable Car")
            FilterItemView(title: "Scooter Car")
        }
    }
}
