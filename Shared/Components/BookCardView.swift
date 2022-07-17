//
//  BookCardView.swift
//  COSC2659_Assignment1_s3754450 (iOS)
//
//  Created by Quan, Hoang Minh on 17/07/2022.
//

import SwiftUI

struct BookCardView: View {
    var book : Book = books[0] //default value
    var body: some View {
        VStack(alignment: .leading){
            //Book thumbnail
            Image(book.bookThumb)
                .resizable()
                .aspectRatio(0.9, contentMode: .fill)
                .frame(maxWidth: .infinity)
            
            
            //Book card info
            VStack(alignment: .leading, spacing: 4){
                Text(book.bookTitle)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                //Button
                HStack(alignment: .center, spacing: 2) {
                    Text("See More")
                        .foregroundColor(Color("primary-500"))
                        .font(.system(size: 16))
                    .fontWeight(.bold)
                    
                    Image("arrow-right")
                        .resizable()
                        .frame(width: 16, height: 16)
                }
            }
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 20, trailing: 0))
            .lineLimit(1)
        }
        
        .frame(width: 210, height: 320)
        .background(Color("primary-50")) //TODO: change this
        .cornerRadius(6) //TODO: fix this
        .shadow(color: Color.black.opacity(0.12), radius: 16, x: 0,y: 8)
    }
}


struct BookCardView_Previews: PreviewProvider {
    static var previews: some View {
        BookCardView()
    }
}
