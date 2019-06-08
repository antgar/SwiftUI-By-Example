//
//  TrendingView.swift
//  Facebook-Feed-SwiftUI
//
//  Created by Antoine Garcia on 08/06/2019.
//  Copyright © 2019 antgar. All rights reserved.
//

import SwiftUI

struct TrendingView : View {
    let trendings: [Trending]
    
    var body: some View {
        VStack {
            ScrollView(showsHorizontalIndicator: false) {
                HStack {
                    ForEach(trendings) {trend in
                        Image(trend.image)
                            .resizable()
                            .cornerRadius(5.0)
                            .frame(width: 100, height: 100)
                            .clipped()
                    }
                }
            }
        }
    }
}

#if DEBUG
struct TrendingView_Previews : PreviewProvider {
    static var previews: some View {
        TrendingView(trendings: ContentPreview.trendings)
    }
}
#endif
