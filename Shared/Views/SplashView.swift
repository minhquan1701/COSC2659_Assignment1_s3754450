//
//  SplashView.swift
//  COSC2659_Assignment1_s3754450 (iOS)
//
//  Created by Quan, Hoang Minh on 29/07/2022.
//

import SwiftUI

struct SplashView: View {
    @State var isLoaded : Bool = false
    @State private  var initOpacity = 0.4
    @State private  var initTitleOpacity : CGFloat = 0
    @State private  var size = 0.4
    @State private var  titlePosY : CGFloat = 10
       
       var body: some View {
           
           //when animation is done
           if isLoaded {
               ContentView()
           } else {
               VStack {
                   VStack {
                       Image("open-book")
                           .resizable()
                           .frame(width: 48, height: 48)
                           .scaleEffect(size)
                           .opacity(initOpacity)
                           .onAppear {
                               withAnimation(.easeIn(duration: 0.7)) {
                                   self.size = 1.7
                                   self.initOpacity = 1.00
                               }
                               withAnimation(.easeOut(duration: 0.7).delay(0.1)) {
                                   self.size = 0.9
                                   self.initOpacity = 1.00
                               }
                           }
    
                       Text("📚 My Book Wishlist")
                           .font(.system(size: 26))
                           .fontWeight(.bold)
                           .offset(y: titlePosY)
                           .opacity(initTitleOpacity)
                           .onAppear {
                               withAnimation(.easeInOut(duration: 0.2).delay(1)) {
                                   self.titlePosY = 0
                                   self.initTitleOpacity = 1
                                   
                               }
                           }
                           
                   }
                   
               }
               .onAppear {
                   DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                       withAnimation {
                           
                           self.isLoaded = true
                       }
                   }
               }
               
           }
       }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
