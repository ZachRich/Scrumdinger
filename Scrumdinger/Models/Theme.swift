//
//  Theme.swift
//  Scrumdinger
//
//  Created by Zachary Rich on 1/21/24.
//

import SwiftUI

enum Theme: String {
    
    case indigo
    case magenta
    case orange
    case purple
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .orange, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .purple: return .white
            
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
}
