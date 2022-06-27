//
//  EventListElement.swift
//  SwiftUIApp
//
//  Created by Dan Antonie on 27.06.2022.
//

import SwiftUI

struct EventListElement: View {
    @State var event: Event
    @State var hasImage: Bool = false
    var body: some View {
        HStack (spacing: 10) {
            if hasImage {
                
                AsyncImage(url: URL(string: "https://picsum.photos/200/200"))
                    .frame(width: 88, height: 88)
                    .cornerRadius(5)
                    .padding(.leading, 23)
                    .scaledToFit()
            }
            
            VStack (alignment: .leading){
                HStack(spacing: 10) {
                    Image(systemName: "calendar")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                        .frame(width: 11, height: 11, alignment: .leading)
                    Text(event.date)
                        .font(.system(size: 11))
                        .foregroundColor(.blue)
                }
                Text(event.name)
                    .font(.system(size:17))
                Text(event.location)
                    .font(.system(size:15))
                    .foregroundColor(.gray)
            }
        }
    }
}

struct EventListElement_Previews: PreviewProvider {
    static var previews: some View {
        EventListElement(event: events[1])
    }
}
