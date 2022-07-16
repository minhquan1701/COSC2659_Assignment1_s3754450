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
  Created  date: dd/mm/yyyy (e.g. 31/07/2022)
  Last modified: dd/mm/yyyy (e.g. 05/08/2022)
  Acknowledgement: Acknowledge the resources that you use here.
*/

import SwiftUI


struct ContentView: View {
    
    @State private var bookName: String = ""
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    HStack {
                        Image("Search")
                        TextField("Harry Porter", text: $bookName)
                        Image("Circle Fill Close")
                    }
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8) )
                    .frame(width: .infinity, height: 36.0)
                    .background(Color("bg-grey"))
                .cornerRadius(10)
                }
                .padding(EdgeInsets(top: 28, leading: 20, bottom: 28, trailing: 20) )
                
                //List of Books Begins
                ScrollView(.horizontal, showsIndicators: true){
                    HStack (spacing: 16) {
                        ForEach(0 ..< 5) { item in
                            BookCardView()
                        }
                    }
                    .padding(EdgeInsets(top: 28, leading: 20, bottom: 40, trailing: 20) )
                }
                //List of Books Ends
                
                //Break line
                Rectangle()
                    .foregroundColor(Color("bg-grey"))
                    .frame(width: .infinity, height: 1)
                    .padding(.horizontal, 20)
                
                
                HStack (spacing: .infinity){
                    Text("Found Something Worth Reading")
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Add to Wishlist")
                            .fontWeight(.bold)
                            .font(.system(size: 16))
                    }
                    .padding(8)
                    .background(Color("primary-500"))
                    .foregroundColor(Color("primary-50"))
                    .cornerRadius(4)
                    
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

struct BookCardView: View {
    var body: some View {
        VStack{
            Image("the-subtle-art")
                .resizable()
                .aspectRatio(0.9, contentMode: .fill)
                .frame(width: .infinity)
            VStack(alignment: .leading, spacing: 4){
                Text("The Subtle Art Of Not Giving A Fuck")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    
                    
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
            .padding(EdgeInsets(top: 8, leading: 12, bottom: 20, trailing: 0))
            .lineLimit(1)
            
            
        }
        
        .frame(width: 200, height: 300)
        .background(Color("primary-50")) //TODO: change this
        .cornerRadius(6) //TODO: fix this
        .shadow(color: Color.black.opacity(0.12), radius: 16, x: 0,y: 8)
    }
}
