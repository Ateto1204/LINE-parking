//
//  TitleBarView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct TitleBarView: View {
    @EnvironmentObject var appStatus: APPStatus
    let titleName: String
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Button {
                    appStatus.appStatus = .HOME
                } label: {
                    Image(systemName: "arrowshape.backward")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundColor(.white)
                }
                Text(titleName)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
            .background(Color(.green))
        }
    }
}
