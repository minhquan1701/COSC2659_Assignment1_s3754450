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
  Assessment: Assignment 2
  Author: Your name (e.g. Nguyen Van Minh)
  ID: Your student id (e.g. 1234567)
  Created  date: dd/mm/yyyy (e.g. 31/07/2022)
  Last modified: dd/mm/yyyy (e.g. 05/08/2022)
  Acknowledgement: Acknowledge the resources that you use here.
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true){
            HStack {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                BookCardView()
            }
        }}
        
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
                .padding(.bottom)
            VStack(alignment: .leading, spacing: 4){
                Text("The Subtle Art Of Not Giving A Fuck")
                    .fontWeight(.bold)
                
                Text("See More")
                    .font(.subheadline)
            }
            
        }
        .padding(EdgeInsets(top: 16, leading: 20, bottom: 20, trailing: 20))
        
        .frame(width: 300, height: 400)
        .cornerRadius(100) //TODO: fix this
        .background(Color.yellow.opacity(0.95)) //TODO: change this
        
//        .shadow(color: Color.black.opacity(0.4), radius: 0.6, y: 4) TODO: fix
    }
}
