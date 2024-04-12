//
//  FilterView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct FilterView: View {
    @State private var showFilter = false
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button {
                    self.showFilter = true
                } label: {
                    ZStack {
                        Circle()
                            .frame(width: 56)
                            .foregroundColor(.green)
                        Image(systemName: "checklist")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 26)
                            .foregroundColor(.white)
                    }
                    .shadow(radius: 10)
                }
                .sheet(isPresented: $showFilter) {
                    FilterSheetView(showFilter: $showFilter)
                }
                .padding(.trailing, 18)
            }
        }
    }
}
