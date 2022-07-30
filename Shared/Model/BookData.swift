//
//  BookData.swift
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
  Created  date: 17/07/2022
  Last modified: 30/07/2022
  Acknowledgement:
    Splash screen inspiration: https://www.youtube.com/watch?v=0ytO3wCRKZU
*/


import SwiftUI

struct Book : Identifiable {
    var id = UUID()
    var bookTitle: String
    var bookAuthor: String
    var bookThumb: String
    var bookDesc: String
    var bookCategory: String
}

var books : [Book] = [
    Book(bookTitle: "The Untethered Soul: The Journey Beyond Yourself", bookAuthor: "Michael A. Singer", bookThumb: "the-untethered", bookDesc: "What would it be like to free yourself from limitations and soar beyond your boundaries? What can you do each day to discover inner peace and serenity? The Untethered Soul offers simple yet profound answers to these questions. Whether this is your first exploration of inner space, or you’ve devoted your life to the inward journey, this book will transform your relationship with yourself and the world around you. You’ll discover what you can do to put an end to the habitual thoughts and emotions that limit your consciousness. By tapping into traditions of meditation and mindfulness, author and spiritual teacher Michael A. Singer shows how the development of consciousness can enable us all to dwell in the present moment and let go of painful thoughts and memories that keep us from achieving happiness and self-realization.", bookCategory: "Sprituality"),
    Book(bookTitle: "The Subtle Art of Not Giving A Fuck", bookAuthor: "Mark Manson", bookThumb: "the-subtle-art", bookDesc: "In this generation-defining self-help guide, a superstar blogger cuts through the crap to show us how to stop trying to be positive all the time so that we can truly become better, happier people. For decades we've been told that positive thinking is the key to a happy, rich life.", bookCategory: "Self-help"),
    Book(bookTitle: "Deep Work", bookAuthor: "Cal Newport", bookThumb: "deep-work", bookDesc: "Master one of our economy’s most rare skills and achieve groundbreaking results with this exciting audiobook (Daniel H. Pink) from an “xceptional author (New York Times Book Review). Deep work is the ability to focus without distraction on a cognitively demanding task. It's a skill that allows you to quickly master complicated information and produce better results in less time. Deep Work will make you better at what you do and provide the sense of true fulfillment that comes from craftsmanship. In short, deep work is like a super power in our increasingly competitive 21st century economy. And yet, most people have lost the ability to go deep-spending their days instead in a frantic blur of email and social media, not even realizing there's a better way.", bookCategory: "Productivity"),
    Book(bookTitle: "The ONE Thing: The Surprisingly Simple Truth Behind Extraordinary Results", bookAuthor: "Gary Keller", bookThumb: "the-one-thing", bookDesc: "If you want less on your plate and more for your life and career, tune in to the #1 Wall Street Journal best seller, The ONE Thing: The Surprisingly Simple Truth Behind Extraordinary Results. The ONE Thing will bring your life and your work into focus. Authors Gary Keller and Jay Papasan teach you the tricks to cut through the clutter, achieve better results in less time, dial down stress, and master what matters to you.", bookCategory: "Productivity"),
    Book(bookTitle: "Rework", bookAuthor: "Jason Fried", bookThumb: "rework", bookDesc: "From the founders of the trailblazing software company 37signals, here is a different kind of business book one that explores a new reality. Today, anyone can be in business. Tools that used to be out of reach are now easily accessible. Technology that cost thousands is now just a few bucks or even free. Stuff that was impossible just a few years ago is now simple.That means anyone can start a business. And you can do it without working miserable 80-hour weeks or depleting your life savings. You can start it on the side while your day job provides all the cash flow you need. Forget about business plans, meetings, office space - you don't need them.", bookCategory: "Business"),
    

]
