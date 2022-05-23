//
//  Stories.swift
//  Task_2
//
//  Created by admin on 23.05.2022.
//

import Foundation
import SwiftUI 
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


    struct StoryCollection: Identifiable {
        var id: String{
            title
        }
        let title: String
        let thumbnail: Image
    }

    struct StoryView: View {
        let storyCollection: StoryCollection
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

    let storyCollections: [StoryCollection] = [
        .init(title: "1", thumbnail: Image("ManBlackGlass")),
        .init(title: "2", thumbnail: Image("GirlSmile")),
        .init(title: "3", thumbnail: Image("ManRedJacket")),
        .init(title: "4", thumbnail: Image("GirlBlondSmile")),
        .init(title: "5", thumbnail: Image("GirlWhiteDress")),
        .init(title: "6", thumbnail: Image("ManWhiteShirt")),
        
    ]

//
//var stories: some View {
//    ScrollView (.horizontal,showsIndicators: false) {
//        HStack(alignment: .center, spacing: 13) {
//        ForEach(storyCollections){ storyCollection in
//            StoryView(storyCollection: storyCollection)
//            }
//        .frame(width: 50, height: 50)
//        }.padding([.leading],13)
//    }
//}
//var post: some View {
//    PostView()
//}
//}
//
//struct StoryCollection: Identifiable {
//var id: String{
//    title
//}
//let title: String
//let thumbnail: Image
//}
//
//struct StoryView: View {
//let storyCollection: StoryCollection
//var body: some View {
//    ZStack {
//        storyCollection.thumbnail
//        .resizable()
//            .clipped()
//            .scaleEffect()
//        .cornerRadius(100)
//    }
//    .frame(width: 50, height: 50)
//}
//}
//
//let storyCollections: [StoryCollection] = [
//    .init(title: "1", thumbnail: Image("ManBlackGlass")),
//    .init(title: "2", thumbnail: Image("GirlSmile")),
//    .init(title: "3", thumbnail: Image("ManRedJacket")),
//    .init(title: "4", thumbnail: Image("GirlBlondSmile")),
//    .init(title: "5", thumbnail: Image("GirlWhiteDress")),
//    .init(title: "6", thumbnail: Image("ManWhiteShirt")),
//
//]
