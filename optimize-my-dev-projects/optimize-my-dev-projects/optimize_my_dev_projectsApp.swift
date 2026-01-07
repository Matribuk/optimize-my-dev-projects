//
//  optimize_my_dev_projectsApp.swift
//  optimize-my-dev-projects
//
//  Created by Antonin Leprest on 04/01/2026.
//

import SwiftUI
import SwiftData

@main
struct optimize_my_dev_projectsApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                Text("Settings")
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
                NewView()
                    .tabItem{
                        Label("New swift page", systemImage: "car")
                    }
            }
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(Material.ultraThinMaterial, for: .tabBar)
        }
        .modelContainer(sharedModelContainer)
    }
}
