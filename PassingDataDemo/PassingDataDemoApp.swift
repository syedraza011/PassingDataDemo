//
//  PassingDataDemoApp.swift
//  PassingDataDemo
//
//  Created by Syed Raza on 6/11/23.
//

import SwiftUI

@main
struct PassingDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView( viewModel: passingDataViewModel())
        }
    }
}
