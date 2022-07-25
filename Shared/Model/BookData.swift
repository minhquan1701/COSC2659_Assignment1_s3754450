//
//  BookData.swift
//  COSC2659_Assignment1_s3754450 (iOS)
//
//  Created by Quan, Hoang Minh on 17/07/2022.
//

import SwiftUI

struct Book : Identifiable {
    var id = UUID()
    var bookTitle: String
    var bookAuthor: String
    var bookThumb: String
    var bookDesc: String
    
}

var books : [Book] = [
    Book(bookTitle: "The Untethered Soul: The Journey Beyond Yourself", bookAuthor: "Michael A. Singer", bookThumb: "the-untethered", bookDesc: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    Book(bookTitle: "The Subtle Art of Not Giving A Fuck", bookAuthor: "Mark Manson", bookThumb: "the-subtle-art", bookDesc: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    Book(bookTitle: "Deep Work", bookAuthor: "Cal Newport", bookThumb: "deep-work", bookDesc: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),

]
