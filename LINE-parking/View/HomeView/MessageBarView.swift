//
//  MessageBarView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct MessageBarView : View {
    let geometry: GeometryProxy
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(height: geometry.size.height*0.11)
            VStack {
                HStack(spacing: 20) {
                    Group {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                        Image(systemName: "camera")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 34)
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32)
                    }
                    .opacity(0.3)
                    ZStack(alignment: .leading) {
                        Capsule()
                            .frame(width: geometry.size.width*0.45, height: geometry.size.height*0.043)
                            .foregroundColor(.gray)
                            .opacity(0.2)
                        Text("Select any")
                            .foregroundColor(.black)
                            .padding(.leading, 8)
                            .opacity(0.7)
                        HStack {
                            Spacer()
                                .frame(width: geometry.size.width*0.38)
                            Image(systemName: "smiley")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 23)
                                .opacity(0.3)
                                .padding(.trailing, 8)
                        }
                    }
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .opacity(0.3)
                }
                .padding()
                .offset(y: -10)
            }
        }
        .ignoresSafeArea()
    }
}
