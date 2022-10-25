//
//  ContentView.swift
//  PeopleSwiftUI
//
//  Created by Nova on 17/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            PeopleListView()
                .tabItem { VStack {
                    Image(systemName: "person.3")
                    Text("My tribe")
                    }
                }
            Image(systemName: "star")
            Text("Favorites")
                .tabItem { VStack {
                    Image(systemName: "star")
                    Text("Favorites")
                    }
                }
            Image(systemName: "magnifyingglass")
            Text("Search")
                .tabItem { VStack {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PeopleView: View {
    var people: People
    
    var body: some View {
        HStack {
            Image(people.imageName)
                .resizable()
                .frame(width: 90, height: 90)
//                  .clipShape(Circle())
            Text(people.name)
                .font(.title2)
        }
    }
}

struct PeopleListView: View {
    var body: some View {

        NavigationView {
            List(People.default) { people in
                NavigationLink(destination: PeopleDetailView(people: people)) {
                    PeopleView(people: people)
                }
            }
            .navigationBarTitle("My tribe", displayMode: .large)
//            .background(LinearGradient(colors: [.gray, .yellow],
//                                           startPoint: .top,
//                                           endPoint: .center))
//            .scrollContentBackground(.hidden)
        }
    }
}
