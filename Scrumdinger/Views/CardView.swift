//
//  CardView.swift
//  Scrumdinger
//
//  Created by Adwoa Dadson on 19/04/2023.
//

import SwiftUI

struct CardView: View {
    let scrum: DailySrcum
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(scrum.title)")
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)",  systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees" )
                    Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing,20)
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }.font(.caption)
        }.padding()
            .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailySrcum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(.teal)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
