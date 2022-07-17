//
//  BookSliderView.swift
//  COSC2659_Assignment1_s3754450 (iOS)
//
//  Created by Quan, Hoang Minh on 17/07/2022.
//

import SwiftUI

struct BookSliderView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true){
            HStack (spacing: 16) {
                ForEach(books) { book in
                    NavigationLink(destination: DetailView()) {
                        BookCardView(book: book)
                    }
                }
            }
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 40, trailing: 20) )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct BookSliderView_Previews: PreviewProvider {
    static var previews: some View {
        BookSliderView()
    }
}
