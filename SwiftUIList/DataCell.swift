//
//  DataCell.swift
//  SwiftUIList
//
//  Created by Edgar Granados-Perez on 5/31/21.
//

import Foundation
import SwiftUI
//refactoring data

struct DataCell: View{
    var video: Video
    var body: some View{
        HStack{
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
    }
}
