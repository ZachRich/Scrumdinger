//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Zachary Rich on 1/21/24.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInminutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInminutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInminutes = lengthInminutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "API Design",
                   attendees: ["Mike", "Stephen", "James"],
                   lengthInminutes: 10,
                   theme: .teal),
        DailyScrum(title: "1 On 1 Meeting",
                   attendees: ["Zach", "Kathy"],
                   lengthInminutes: 5,
                   theme: .teal),
        DailyScrum(title: "UI Design Meeting",
                   attendees: ["Cam", "Brahim"],
                   lengthInminutes: 5,
                   theme: .yellow)
    ]
}
