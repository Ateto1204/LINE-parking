//
//  HomeView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct HomeView: View {
    let bgColor = Color(red: 140/255, green: 171/255, blue: 217/255)
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                Color(bgColor)
                VStack {
                    HomeTitleView(geometry: geometry)
                    Spacer()
                        .frame(height: 25)
                    HeroView()
                    Magician()
                    Spacer()
                    MessageBarView(geometry: geometry)
                }
            }
        }
        .ignoresSafeArea()
    }
}
