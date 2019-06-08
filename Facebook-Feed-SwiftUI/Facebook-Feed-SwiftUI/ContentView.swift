//
//  ContentView.swift
//  Facebook-Feed-SwiftUI
//
//  Created by Antoine Garcia on 08/06/2019.
//  Copyright © 2019 antgar. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    let posts: [Post]
    let trendings: [Trending]
    var body: some View {
        NavigationView {
            List {
                TrendingView(trendings: trendings)
                    .frame(height: 100)
                    .padding(.bottom, 50)
                ForEach(posts) {post in
                    PostCellView(post: post)
                }
            }
            .navigationBarTitle(Text("Groupes"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(posts: ContentPreview.posts,
                    trendings: ContentPreview.trendings)
    }
}
#endif
