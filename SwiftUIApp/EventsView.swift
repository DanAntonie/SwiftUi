//
//  Events.swift
//  SwiftUIApp
//
//  Created by Dan Antonie on 24.06.2022.
//

import SwiftUI

struct EventsView: View {
    enum selectedFilter {
        case upcoming
        case myEvents
        case past
    }
    
    @State var items = [Event]()
    @State var selected: selectedFilter = .upcoming
    @State private var searchText = ""
    
    var body: some View {
       
        NavigationView {
            VStack (alignment: .leading, spacing: 10){
                
                HStack(alignment: .firstTextBaseline, spacing: 10) {
                   let upcomingSelected = self.selected == .upcoming
                    Button(action: {
                        selected = .upcoming
                    }) {
                        Text("Upcoming")
                            .font(.system(size: 13, weight: .semibold))
                            .padding(8)
                            .background(upcomingSelected ? .blue : .white )
                            
                    }.tint(upcomingSelected ? .white : .gray)
                        .cornerRadius(.infinity)

                    let myEventsSelected = self.selected == .myEvents
                    Button(action: {
                       selected = .myEvents
                    }) {
                        Text("My events")
                            .font(.system(size: 13, weight: .semibold))
                            .padding(8)
                            .background(myEventsSelected ? .blue : .white)
                            .clipShape(Capsule())
                    }.tint(myEventsSelected ? .white : .gray)
                    let pastSelected = self.selected == .past
                    Button(action: {
                        selected = .past
                    }) {
                        Text("Past")
                            .font(.system(size: 13, weight: .semibold))
                            .padding(8)
                            .background(pastSelected ? .blue : .white)
                            .cornerRadius(.infinity)
                    }.tint(pastSelected ? .white : .gray)

                }.padding(.leading, 23.0)
                
                Spacer()
                List {
                    
                }.background(Color.white)
            }.navigationTitle("Events")
                .searchable(text: $searchText)
        }
        
            
    }
}

struct Events_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}

