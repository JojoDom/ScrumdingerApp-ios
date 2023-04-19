//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Adwoa Dadson on 19/04/2023.
//

import Foundation

struct DailySrcum{
    var title : String
    var attendees :[String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailySrcum {
    static let sampleData: [DailySrcum] =
    [
     DailySrcum(
        title: " App Development",
        attendees: ["Adwoa", "Dadson", "Christian", "Barnes"],
        lengthInMinutes: 10,
        theme: .bubblegum),
     
     DailySrcum(
        title: "Design",
        attendees: ["Lily", "Cathy"],
        lengthInMinutes: 10,
        theme: .orange),
     
     DailySrcum(
        title: "Web Dev",
        attendees: ["Christian", "Barnes", "Mabel", "Jovita", "Lois",],
        lengthInMinutes: 10,
        theme: .poppy)
    ]
        
    
}
