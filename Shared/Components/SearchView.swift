//
//  SearchView.swift
//  COSC2659_Assignment1_s3754450 (iOS)
//
//  Created by Quan, Hoang Minh on 17/07/2022.
//

import SwiftUI

struct SearchView: View {
    @State private var bookName: String = ""
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
