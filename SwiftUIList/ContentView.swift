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
                Image(video.imageName)
                    //important not to self here when adding the elements of the videos array you reference the the object of the list. so for example if I called the elements "item". the correct statement will be "item.imageName"
                    .resizable()
                    //allows image to fit
                    .scaledToFit()
                //allows image to not look shitty when inside the cell
                    .frame(height: 70)
                    .cornerRadius(4)
                    .padding(.vertical, 4)
                VStack(alignment: .leading){
                    Text(video.title)
                        .fontWeight(.semibold)
                        // changes the thickness of the font
                        .lineLimit(2)
                        // amoount of lines for the font
                        .minimumScaleFactor(0.5)
                    // how much a font can decrease in size if its too large in this case the font is only allowed to shrink to 50 % of its intended size
                    Text(video.uploadDate)
                        .font(.subheadline)
                        // this changes the size to layout text in html this is referred to as <h2,p,h1, etc.>
                        .foregroundColor(.secondary)
                        //changes the color of the font to what ever the secondary color is set in the main
                }
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
