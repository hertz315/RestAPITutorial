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
                ToDoView()
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("SwiftUI")
                    }
                MainVC
                    .instantiate()
                    .getRepresentable()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("UIKit")
                    }
            }
        }
    }
}
