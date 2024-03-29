//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Zachary Rich on 1/21/24.
//

import SwiftUI

struct DetailEditView: View {
    
    @State private var scrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("meeting title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    Spacer()
                    Text("\(scrum.lengthInminutes) minutes")
                }
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
            }
            HStack {
                TextField("New Attendee", text: $newAttendeeName)
                Button(action: {
                    withAnimation {
                        let attendee = DailyScrum.Attendee(name: newAttendeeName)
                        scrum.attendees.append(attendee)
                        newAttendeeName = ""
                    }
                }) {
                    Image(systemName: "plus.circle.fill")
                }
            }.disabled(newAttendeeName.isEmpty)
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
