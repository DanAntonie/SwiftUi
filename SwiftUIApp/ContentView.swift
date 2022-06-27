//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Dan Antonie on 23.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        VStack {

            NavigationLink(destination: EventsView(), label: {
                Text("Navigate")
                Image("HappyFace")
            })
            
            CircleImage()
            VStack(alignment: .leading) {
           
           
            Text("Hello, world!")
                .font(.title)
                .multilineTextAlignment(.leading)
                .padding(.leading, -1.0)
                .foregroundColor(.red)
           
            HStack {
               
                Text(/*@START_MENU_TOKEN@*/"great"/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
                Text("caliofornia")
            }
        }.padding()
           
        }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
