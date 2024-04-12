//
//  TitleBarView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/12.
//

import SwiftUI

struct TitleBarView: View {
    let titleName: String
    var body: some View {
        VStack {
            HStack {
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
