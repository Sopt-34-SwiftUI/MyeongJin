//
//  SwiftUIStudyApp.swift
//  SwiftUIStudy
//
//  Created by 이명진 on 5/10/24.
//

import ComposableArchitecture
import SwiftUI


@main
struct MyApp: App {
    static let store = Store(initialState: CalculatorFeature.State()) {
        CalculatorFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView(store: MyApp.store)
        }
    }
}
