//
//  ParkingDataView.swift
//  LINE-parking
//
//  Created by 蘇東毅 on 2024/4/13.
//

import SwiftUI
import Pow

struct ParkingDataView: View {
    @EnvironmentObject var appStatus: APPStatus
    @State var animating = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        withAnimation {
                            self.animating = false
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + (0.5)) {
                            appStatus.appStatus = appStatus.lastAppStatus
                        }
                    } label: {
                        Text("BACK")
                            .shadow(radius: 1.14)
                            .opacity(0.72)
                    }
                    .padding()
                    Spacer()
                }
                Spacer()
            }
            if animating {
                ParkingDataContentView()
                .padding()
                .transition(
                  .asymmetric(
                      insertion: .movingParts.move(
                        angle: .degrees(45)
                      ),
                      removal: .movingParts.move(
                        angle: .degrees(-135)
                      )
                  ).combined(with: .opacity)
                )
            }
        }
        .onAppear() {
            withAnimation {
                self.animating = true
            }
        }
    }
}
