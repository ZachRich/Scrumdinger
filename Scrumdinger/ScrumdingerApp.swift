//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Zachary Rich on 1/21/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
