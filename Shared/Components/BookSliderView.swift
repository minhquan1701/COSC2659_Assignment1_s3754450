//
//  BookSliderView.swift
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

struct BookSliderView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true){
            LazyHStack (spacing: 16) {
                ForEach(books) { book in
                    NavigationLink(destination: DetailView(book: book)) {
                        BookCardView(book: book)
                        
                        
                    }
                    .buttonStyle(PlainButtonStyle())
                
                    
                    
                }
            
            }
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 40, trailing: 20) )
            
        }
        
    }
}

struct BookSliderView_Previews: PreviewProvider {
    static var previews: some View {
        BookSliderView()
    }
}
