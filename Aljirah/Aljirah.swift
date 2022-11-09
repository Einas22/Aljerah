//
//  ExampleApp.swift
//  Example
//
//  Created by Ghada Amer Alshahrani on 04/04/1444 AH.
//

import SwiftUI

@main
struct Aljirah: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView().environmentObject(LocalSearchService())
        }
    }
}
