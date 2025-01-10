//
//  HomeView.swift
//  EpameinondasZymvrakakis
//
//  Created by Angelos Staboulis on 10/1/25.
//

import SwiftUI
extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
struct HomeView: View {
    @State var text: String = ""
    @State var text1: String = ""
    @State var finalText: String = "ΕΠΑΜΕΙΝΩΝΔΑΣ"
    @State var finalText1: String = "ΖΥΜΒΡΑΚΑΚΗΣ"
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var position:Int = 0
    @State var position1:Int = 0
    var gradient =  LinearGradient(gradient: Gradient(colors: [.white,.white,.white]), startPoint: .top, endPoint: .bottom)
    var body: some View {
        VStack{
            Image(.zymvrakakis).resizable().overlay {
                VStack{
                    HStack {
                        Text(text).font(.largeTitle).frame(width:950,alignment:.leading)
                            .foregroundStyle(gradient)
                            .offset(x:355,y:-320)
                            .onReceive(timer) { output in
                                if position < finalText.count {
                                    text.append(finalText[position])
                                }
                                position = position + 1
                            }
                    }
                    HStack {
                        Text(text1).font(.largeTitle).frame(width:950,alignment:.leading)
                            .foregroundStyle(gradient)
                            .offset(x:360,y:-320)
                            .onReceive(timer) { output in
                                if position1 < finalText1.count {
                                    text1.append(finalText1[position1])
                                }
                                position1 = position1 + 1
                            }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
