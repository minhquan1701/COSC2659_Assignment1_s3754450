//
//  SearchView.swift
//  COSC2659_Assignment1_s3754450 (iOS)
//
//  Created by Quan, Hoang Minh on 17/07/2022.
//

/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Hoang Minh Quan
  ID: s3754450
  Created date: 17/07/2022
  Last modified: 30/07/2022
  Acknowledgement:
    Splash screen inspiration: https://www.youtube.com/watch?v=0ytO3wCRKZU
*/


import SwiftUI

struct SearchView: View {
    @State private var bookName: String = ""
    @State var searchQuery = ""
    
    var body: some View {
        //Search box container
        HStack {
            //Search input field
            HStack {
                Image("Search")
                TextField("Harry Porter", text: $bookName)
                Image("Circle Fill Close")
            }
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8) )
            .frame(maxWidth: .infinity, minHeight: 36.0)
            .background(Color("bg-grey"))
        .cornerRadius(10)
        }
        .padding(EdgeInsets(top: 28, leading: 20, bottom: 28, trailing: 20) )
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
