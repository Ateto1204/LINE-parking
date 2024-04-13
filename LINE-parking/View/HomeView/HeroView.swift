//
//  HeroView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct HeroView: View {
    @EnvironmentObject var appStatus: APPStatus
    var body: some View {
        HStack(spacing: 0) {
            VStack {
                Image("辛梅爾")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 100)
                    .shadow(radius: 2)
                Spacer()
                    .frame(height: 100)
            }
            ZStack {
                Image(systemName: "bubble.fill")
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(.degrees(90))
                    .frame(width: 180)
                    .foregroundColor(.white)
                    .offset(x: -14)
                    .shadow(radius: 4)
                VStack(spacing: 20) {
                    Text("找停車塲")
                    Button {
                        appStatus.appStatus = .LIST
                    } label: {
                        Image(systemName: "mail.and.text.magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                            .shadow(radius: 3)
                            .offset(x: 2)
                            .foregroundColor(.blue)
                    }
                }
            }
            Spacer()
        }
        .padding()
        .offset(x: -23)
    }
}
