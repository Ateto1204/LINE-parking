//
//  Macgician.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct Magician: View {
    let bubleColor = Color(red: 121/255, green: 226/255, blue: 120/255) // 121,226,120
    
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
                        .foregroundColor(bubleColor)
                        .shadow(radius: 4)
                }
                VStack {
                    Text("我的最愛")
                        .padding(.trailing, 23)
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

#Preview {
    Magician()
}
