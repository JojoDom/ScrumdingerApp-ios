//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Adwoa Dadson on 17/04/2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
