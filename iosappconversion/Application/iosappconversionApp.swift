//
//  iosappconversionApp.swift
//  iosappconversion

import SwiftUI

@main
struct iosappconversionApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}
