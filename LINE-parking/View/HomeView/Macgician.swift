//
//  Macgician.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct Magician: View {
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                HStack {
                    Image(systemName: "bubble.fill")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(x: -1, y: 1)
                        .rotationEffect(.degrees(270))
                        .frame(width: 180)
                        .foregroundColor(.green)
                        .shadow(radius: 4)
                }
                Button {
                    
                } label: {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 76)
                        .offset(x: -13)
                        .shadow(radius: 3)
                        .foregroundColor(.red)
                }
            }
            VStack {
                Image("芙利蓮")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 63)
                    .shadow(radius: 2)
                Spacer()
                    .frame(height: 80)
            }
        }
        .padding()
    }
}
