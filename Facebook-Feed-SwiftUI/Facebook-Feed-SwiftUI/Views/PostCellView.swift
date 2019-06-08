//
//  PostCellView.swift
//  Facebook-Feed-SwiftUI
//
//  Created by Antoine Garcia on 08/06/2019.
//  Copyright © 2019 antgar. All rights reserved.
//

import SwiftUI

struct PostCellView : View {
    let post: Post
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Image(post.user.imageName)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width:50, height: 50)
                    .clipped()
                VStack(alignment: .leading) {
                    Text(post.user.name)
                        .font(.title)
                    Text("Posted one day ago").font(.subheadline)
                }
            }
            Text(post.text)
            .lineLimit(nil)
            .padding(.leading, 15)
            .padding(.trailing, 32)
        }
    }
}

#if DEBUG
struct PostCellView_Previews : PreviewProvider {
    static var previews: some View {
        PostCellView(post: ContentPreview.posts[2])
    }
}
#endif
