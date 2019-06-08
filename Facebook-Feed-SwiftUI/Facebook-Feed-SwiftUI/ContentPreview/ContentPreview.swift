//
//  ContentPreview.swift
//  Facebook-Feed-SwiftUI
//
//  Created by Antoine Garcia on 08/06/2019.
//  Copyright © 2019 antgar. All rights reserved.
//

import Foundation
import UIKit

struct ContentPreview {
    static let posts = [Post(id: 0,
                             text: "Je suis un court",
                             user: User(name: "Antoine Garcia", imageName: "user")),
                        Post(id: 1,
                             text: "Je suis un post court.",
                             user: User(name: "Antoine Garcia", imageName: "user")),
                        Post(id: 2,
                             text: "Je suis un post assez long racontant ma vie.dehfozfheozifhoeizhfoiezhfoiezhfoiezhfezfhoezhfozehfoiezhfeifhantoine",
                             user: User(name: "Antoine Garcia", imageName: "user")),
                        Post(id: 3,
                             text: "Je suis un post court",
                             user: User(name: "Antoine Garcia", imageName: "user"))]
    
    static let trendings = [Trending(id: 0, image: "user"),
                            Trending(id: 1, image: "user"),
                            Trending(id: 2, image: "user"),
                            Trending(id: 3, image: "user"),
                            Trending(id: 4, image: "user"),
                            Trending(id: 5, image: "user"),
                            Trending(id: 6, image: "user"),
                            Trending(id: 7, image: "user")]
}
