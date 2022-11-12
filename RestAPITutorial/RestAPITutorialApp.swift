//
//  RestAPITutorialApp.swift
//  RestAPITutorial
//
//  Created by Hertz on 11/12/22.
//

import SwiftUI

@main
struct RestAPITutorialApp: App {
    var body: some Scene {
        WindowGroup {
            // 탭뷰 생성
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: <#T##String#>)
                    }
            }
        }
    }
}
