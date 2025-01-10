//
//  MediaView.swift
//  EpameinondasZymvrakakis
//
//  Created by Angelos Staboulis on 10/1/25.
//

import SwiftUI

struct MediaView: View {
    @State private var amount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack(alignment: .center) {
                           ProgressView("Loading…", value: amount, total: 50)
                               .onReceive(timer) { _ in
                                   if amount < 50 {
                                       amount += 2
                                   }
                           }.opacity(amount < 50 ? 1 : 0.0)
                           .progressViewStyle(.circular)
                           
               }.background {
                           WebVideo(urlVideo:
                                       "https://www.youtube.com/embed/3dkT7RU-VIE").frame(width:600,height:780)
               }
    }
}

#Preview {
    MediaView()
}
//https://www.youtube.com/watch?v=3dkT7RU-VIE&pp=ygUvzpXPgM6xzrzOtc65zr3Pjs69zrTOsc-CIM6Wz4XOvM6yz4HOsc66zqzOus63z4I%3D
