//
//  BlogView.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//


import SwiftUI

struct BlogView: View {
    @EnvironmentObject var router: NavigationManager
    @StateObject var blogViewModel = BlogViewModel()
    var body: some View {
        ZStack {
            Color
                .mainBlueColorLighter
                .ignoresSafeArea()
            
            List(blogs) { blog in
                VStack {
                    Image(blog.imageResource)
                        .resizable()
                        .scaledToFit()
                    
                    VStackLayout(alignment: .leading, spacing: 10) {
                        Link(destination: blog.url) {
                            Text(blog.title)
                                .font(.system(size: 16, weight: .regular))
                                .foregroundStyle(.mainRedColorLight)
                                .underline()
                        }
                        
                        PXText(title: blog.description,
                               fontSize: 12,
                               color: .mainBlueColorDark,
                               fontType: .regular) { }
                    }
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
            }
            .background(Color.clear)
            .foregroundStyle(.clear)
            .scrollContentBackground(.hidden)
            .listRowBackground(Color.clear)
            .listStyle(PlainListStyle())
        }
        .navigationTitle("News/Blogs")
    }
}
#Preview {
    BlogView()
        .environmentObject(NavigationManager())
}
