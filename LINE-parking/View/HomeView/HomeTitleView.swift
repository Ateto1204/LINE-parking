//
//  HomeTitleView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct HomeTitleView: View {
    let geometry: GeometryProxy
    var body: some View {
        VStack {
            Spacer()
                .frame(height: geometry.size.height*0.06)
            HStack(spacing: 13) {
                Image(systemName: "chevron.left")
                Text("LINE Parking")
                    .font(.system(size: geometry.size.width*0.05))
                    .bold()
                Spacer()
                HStack(spacing: 19) {
                    Group {
                        Image(systemName: "1.magnifyingglass.ar")
                            .resizable()
                        Image(systemName: "phone")
                            .resizable()
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                    }
                    .scaledToFit()
                    .frame(width: geometry.size.width*0.053)
                    .offset(y: 4)
                }
            }
            .padding()
            ZStack {
                Capsule()
                    .frame(width: geometry.size.width*0.189, height: geometry.size.height*0.044)
                    .opacity(0.143)
                Text("Today")
                    .foregroundColor(.white)
                    .font(.callout)
                
            }
        }
    }
}
