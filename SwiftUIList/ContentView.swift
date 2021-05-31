//
//  ContentView.swift
//  SwiftUI-List-Starter
//
//  Created by Edgar Granados.
//

import SwiftUI

// ctrl I realligns everything

//now lets add the video array from the preset folder
 
var videos: [Video] = VideoList.topTen

//this adds the array of type "Video" from a previously constructed array called "topTen"

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(videos, id:\.id){ video in
                //by right clicking on the HStack you can actually create it to be a list which is so dope
                // now rather than just passing the dummy code add data from Video.swift by changing the values of List(0..<5) to List(videos)
                // but to do this you will need an id for the said object
                NavigationLink(
                    // the navigationLink allows the programmer to reorganized the data into new viewsets
                    //our destination is how we setup our detailed view list using our dummy preview
                    // label is the code or viewpane for that informantion view previously created
                    destination: VideoDetailView(video: video),
                    label: {
                        DataCell(video: video)
                    })
            }
            .navigationTitle("Top Ten view")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
