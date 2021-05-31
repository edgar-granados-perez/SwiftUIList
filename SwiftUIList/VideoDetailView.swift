//
//  VideoDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by Edgar Granados-Perez on 5/31/21.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    // you need to import data as a unit so you create a variable called video that takes in a dateType of "Video"
    
    var body: some View {
        VStack{
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(5)
            Text(video.title)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            padding(.horizontal)
            
            HStack{
                Label("\(video.viewCount)", systemImage: "eye.fill")
            }
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
        // here is where you refrence where video is coming from. so it comes from VideoList array called topTen and its the first one in the array
    }
}
