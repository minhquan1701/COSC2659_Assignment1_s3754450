//
//  BookTagView.swift
//  COSC2659_Assignment1_s3754450 (iOS)
//
//  Created by Quan, Hoang Minh on 23/07/2022.
//

/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Hoang Minh Quan
  ID: s3754450
  Created  date: 23/07/2022
  Last modified: 30/07/2022
  Acknowledgement:
    Splash screen inspiration: https://www.youtube.com/watch?v=0ytO3wCRKZU
*/


import SwiftUI

struct BookTagView: View {
    var text = "Mark Manson"
    var type = "Category"
    var body: some View {
        
        HStack (spacing: 4){
            type == "Author" ?
            Image("Pencil")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 12)
                : Image("Folder")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 12)
            Text( (type == "Author" ? "Author: ": "Category: ") + text)
                .font(.system(size: 11))
                .foregroundColor(Color("primary-500"))
                .fontWeight(.bold)
                
        }
        .padding(12)
        .background(Color("primary-300"))
    }
}

struct BookTagView_Previews: PreviewProvider {
    static var previews: some View {
        BookTagView()
    }
}
