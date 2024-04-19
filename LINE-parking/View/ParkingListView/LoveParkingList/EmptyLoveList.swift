//
//  EmptyLoveList.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/19.
//

import SwiftUI

struct EmptyLoveList: View {
    var body: some View {
        ZStack {
            List {
                
            }
            VStack(alignment: .center, spacing: 21) {
                Image("寶箱怪")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .clipShape(Circle())
                    .opacity(0.7)
                    .shadow(radius: 2.2)
                VStack(spacing: 5) {
                    Text("好黑喔～")
                        .foregroundColor(.gray)
                        .opacity(0.7)
                    Text("趕快去收藏更多停車場資訊吧")
                        .foregroundColor(.gray)
                        .opacity(0.7)
                }
            }
            .padding(.bottom)
        }
    }
}
