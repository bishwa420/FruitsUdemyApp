//
//  FruitsUdemyAppApp.swift
//  FruitsUdemyApp
//
//  Created by Bishwajit Purkaystha on 12/11/22.
//

import SwiftUI

@main
struct FruitsUdemyAppApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
