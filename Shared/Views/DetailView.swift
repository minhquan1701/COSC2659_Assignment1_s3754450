//
//  DetailView.swift
//  COSC2659_Assignment1_s3754450 (iOS)
//
//  Created by Quan, Hoang Minh on 17/07/2022.
//

import SwiftUI

struct DetailView: View {
    var book = books[1]
    
    var body: some View {
        VStack{
            ZStack (alignment: .bottom) {
                    Image(book.bookThumb)
                        .resizable()
                        .scaledToFit()
                        
//                        .overlay(
//                            ZStack (alignment: .bottom) {
//                                LinearGradient(
//                                        gradient: Gradient(stops: [
//                                            .init(color: .white, location: 0.2),
//                                            .init(color: .white.opacity(0.3), location: 0.5)
//                                        ]),
//                                        startPoint: .bottom,
//                                        endPoint: .top
//                                    )
//
//
//                                VStack {
//                                    Text(book.bookTitle)
//                                        .font(.system(size: 32))
//                                        .fontWeight(.bold)
//                                        .foregroundColor(Color("primary-800"))
//
//                                        .frame(maxWidth: .infinity, alignment: .leading)
//                                        .padding(.horizontal,20)
//
//
//                                    HStack (spacing: 12){
//                                        BookTagView(text: book.bookAuthor, type: "Author")
//                                        BookTagView(text: "Self-help", type: "Category")
//
//                                    }
//                                    .frame(maxWidth: .infinity, alignment: .leading)
//                                    .padding(.horizontal, 20)
//                                }
//                            }
//
//                        )
                ZStack (alignment: .bottom) {
                    LinearGradient(
                            gradient: Gradient(stops: [
                                .init(color: .white, location: 0.2),
                                .init(color: .white.opacity(0.3), location: 0.5)
                            ]),
                            startPoint: .bottom,
                            endPoint: .top
                        )


                    VStack {
                        Text(book.bookTitle)
                            .font(.system(size: 32))
                            .fontWeight(.bold)
                            .foregroundColor(Color("primary-800"))

                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal,20)


                        HStack (spacing: 12){
                            BookTagView(text: book.bookAuthor, type: "Author")
                            BookTagView(text: "Self-help", type: "Category")

                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                    }
                }
                    
                
            }
            .frame(height: 400)
            Spacer()
            
        
            
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
