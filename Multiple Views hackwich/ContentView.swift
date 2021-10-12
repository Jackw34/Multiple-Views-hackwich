//
//  ContentView.swift
//  Multiple Views hackwich
//
//  Created by Student on 10/11/21.
//


import SwiftUI
 
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text ("This is where everything starts")
                    .padding()
                NavigationLink("Next View", destination:SwiftUIView01(phrase: "This is from the first view"))
            }
            .navigationTitle("Initial View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI
 
struct SwiftUIView01: View {
    let phrase : String
    var body: some View {
        VStack {
        Text(phrase)
            .padding()
            NavigationLink("Next View", destination:SwiftUIView01(phrase: "This is from the first view"))
        }
        .navigationTitle("Second View")
    }
}
 
 
struct SwiftUIView_swift01_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView01(phrase: "Howdy")
    }
}

import SwiftUI
 
struct SwiftUIView02: View {
    let phrase : String
    var body: some View {
        VStack {
        Text(phrase)
            .padding()
            NavigationLink("Next View", destination:SwiftUIView02(phrase: "This is from the second view"))
        }
        .navigationTitle("Third View")
    }
}
import SwiftUI
 
struct SwiftUIView03: View {
    let phrase : String
    var body: some View {
        VStack {
        Text(phrase)
            .padding()
            NavigationLink("Next View", destination:SwiftUIView03(phrase: "This is from the third view"))
        }
        .navigationTitle("Fourth View")
    }
}
 
 
struct SwiftUIView_swift03_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView03(phrase: "Howdy")
    }
}


 
struct SwiftUIView_swift02_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView02(phrase: "Howdy")
    }
}

