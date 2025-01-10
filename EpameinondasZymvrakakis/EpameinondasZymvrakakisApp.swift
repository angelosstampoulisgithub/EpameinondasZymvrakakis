//
//  EpameinondasZymvrakakisApp.swift
//  EpameinondasZymvrakakis
//
//  Created by Angelos Staboulis on 10/1/25.
//

import SwiftUI

@main
struct EpameinondasZymvrakakisApp: App {
    @StateObject var viewModel = ViewModel(model: .init(id: .init(), biography: ""))
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.environmentObject(viewModel)
    }
}
