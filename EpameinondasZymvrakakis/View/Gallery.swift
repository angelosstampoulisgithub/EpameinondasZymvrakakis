//
//  Gallery.swift
//  EpameinondasZymvrakakis
//
//  Created by Angelos Staboulis on 10/1/25.
//

import SwiftUI

struct Gallery: View {
    var body: some View {
        ZStack{
                       VStack{
                           Color.black.overlay {
                               PageCurl()
                           }
                       }.frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
            }
    }
}

#Preview {
    Gallery()
}