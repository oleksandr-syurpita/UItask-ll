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
            ScrollView(showsIndicators: false){
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
  

    var stories: some View {
        ScrollView (.horizontal,showsIndicators: false) {
            HStack(alignment: .center, spacing: 13) {
            ForEach(storyCollections){ storyCollection in
                StoryView(storyCollection: storyCollection)
                }
            .frame(width: 50, height: 50)
            }.padding([.leading],13)
        }
    }
    var post: some View {
        PostView()
    }
}
struct storyCollection: Identifiable {
    var id: String{
        title
    }
    let title: String
    let thumbnail: Image
}

struct StoryView: View {
    let storyCollection: storyCollection
    var body: some View {
        ZStack {
            storyCollection.thumbnail
            .resizable()
                .clipped()
                .scaleEffect()
            .cornerRadius(100)
        }
        .frame(width: 50, height: 50)
    }
}

struct PostView: View {
    var body: some View {
        VStack {
            content
            actions
            Like
            caption
            content_2
            actions_2
            Like_2
            caption_2
        }
    }
    

    var content:some View {
        VStack{
            Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(Color.blackColor)
            
        Image("FirstGirl")
            .resizable()
            .frame(width: 390, height: 557.14)
        }
        
    }
    var Like:some View {
        VStack {
        HStack{
            Text("Liked: 18,232")
                .font(.system(size: 14, weight: .bold))
            Spacer()
            }
        .padding(.horizontal, 20)
            
            HStack{
                Text("Shared: 18,232")
                    .font(.system(size: 14, weight: .bold))
                Spacer()
                }
            .padding(.horizontal, 20)
        }
        .padding(.bottom,10)
    }
    var actions:some View {
        HStack(spacing: 20){
        
        Button(action: {} ) {
            Image("heart")
                .resizable()
                   .frame(width: 25.0, height: 25.0)
        }
        Button(action: {} ) {
            Image("comment")
                .resizable()
                   .frame(width: 25.0, height: 25.0)
        }
        
        Spacer()
        Button(action: {} ) {
            Image("@")
                .resizable()
                   .frame(width: 25.0, height: 25.0)
                
        }
        
    }
        .padding(.horizontal, 20)
        }
    }
    var caption:some View {
        HStack {
            Text("**demo_art_account**: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi")
                .font(.system(size: 14))
        }.padding(.horizontal, 20)
    }
var content_2:some View {
    VStack{
        Divider()
         .frame(height: 1)
         .padding(.horizontal, 30)
         .background(Color.blackColor)
        
    Image("TwoGirl")
        .resizable()
        .frame(width: 390, height: 557.14)
    }
    
}
var Like_2:some View {
    VStack {
    HStack{
        Text("Liked: 1,123")
            .font(.system(size: 14, weight: .bold))
        Spacer()
        }
    .padding(.horizontal, 20)
        
        HStack{
            Text("Shared: 479")
                .font(.system(size: 14, weight: .bold))
            Spacer()
            }
        .padding(.horizontal, 20)
    }
    .padding(.bottom,10)
}
var actions_2:some View {
    HStack(spacing: 20){
    
    Button(action: {} ) {
        Image("heart")
            .resizable()
               .frame(width: 25.0, height: 25.0)
    }
    Button(action: {} ) {
        Image("comment")
            .resizable()
               .frame(width: 25.0, height: 25.0)
    }
    
    Spacer()
    Button(action: {} ) {
        Image("@")
            .resizable()
               .frame(width: 25.0, height: 25.0)
            
    }
    
}
    .padding(.horizontal, 20)
    }

var caption_2:some View {
    VStack {
      

    VStack {
        Text("**demo_art_account2**: Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi")
        
            .font(.system(size: 14))
        Divider()
         .frame(height: 1)
         .padding(.horizontal, 30)
         .background(Color.blackColor)
        
    }
    .padding(.horizontal, 20)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
        
//        PostView()
//            .previewDevice("iPhone 13")


//        StoryView()
//            .previewDevice("iPhone 13")
    }
}


extension Color {
    static var pinkColor: Color {
        Color("PinkColor")
    }
    
    static var blackColor: Color {
        Color("BlackColor")
    }
}

let storyCollections: [storyCollection] = [
    .init(title: "1", thumbnail: Image("ManBlackGlass")),
    .init(title: "2", thumbnail: Image("GirlSmile")),
    .init(title: "3", thumbnail: Image("ManRedJacket")),
    .init(title: "4", thumbnail: Image("GirlBlondSmile")),
    .init(title: "5", thumbnail: Image("GirlWhiteDress")),
    .init(title: "6", thumbnail: Image("ManWhiteShirt")),

]


