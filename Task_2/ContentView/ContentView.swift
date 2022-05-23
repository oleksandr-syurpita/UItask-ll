//
//  ContentView.swift
//  Task_2
//
//  Created by admin on 22.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View { 
        NavigationView {
            VStack {
                ScrollView(showsIndicators: false) {
                    stories
                    post
                    Spacer()
                }
            }
            .navigationTitle("What's New?")
            .font(.system(size: 34, weight: .bold))
            Spacer()
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone 13")
                .previewDevice("iPhone 13")
        }
    }
}


