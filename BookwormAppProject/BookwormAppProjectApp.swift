//
//  BookwormAppProjectApp.swift
//  BookwormAppProject
//
//  Created by Emma Gutierrez on 3/11/23.
//

import SwiftUI

@main
struct BookwormAppProjectApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext) // This generates the live version of my data
        }
    }
}
