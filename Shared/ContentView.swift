//
//  ContentView.swift
//  Shared
//
//  Created by Quan, Hoang Minh on 13/07/2022.
//

/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Hoang Minh Quan
  ID: s3754450
  Created  date: 13/07/2022
  Last modified: dd/mm/yyyy (e.g. 05/08/2022)
  Acknowledgement: Acknowledge the resources that you use here.
*/

import SwiftUI


struct ContentView: View {
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                SearchView()
                
                //List of Books
                BookSliderView()
            
                
                //Line Break
                Rectangle()
                    .foregroundColor(Color("bg-grey"))
                    .frame(maxWidth: .infinity, maxHeight: 1)
                    .padding(.horizontal, 20)
                
                
                //Add new book to collection
                VStack {
                    //Add button
                    HStack (alignment: .center){
                        Text("Found Something Worth Reading?")
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Add to Wishlist")
                                .fontWeight(.bold)
                                .font(.system(size: 16))
                        }
                        .padding(EdgeInsets(top: 12, leading: 10, bottom: 12, trailing: 10))
                        .background(Color("primary-500"))
                        .foregroundColor(Color("primary-50"))
                        .cornerRadius(4)
                        
                    }
                    .padding(.horizontal, 20)
                    
                    //Illustration
                    Image("book-illus")
                }
            }
            .navigationTitle("📚 My Book Wishlist")

            

        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

