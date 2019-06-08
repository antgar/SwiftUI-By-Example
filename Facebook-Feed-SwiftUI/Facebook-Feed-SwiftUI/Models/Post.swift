//
//  Post.swift
//  Facebook-Feed-SwiftUI
//
//  Created by Antoine Garcia on 08/06/2019.
//  Copyright © 2019 antgar. All rights reserved.
//

import Foundation
import SwiftUI

struct Post: Identifiable {
    var id: Int
    let text: String
    let user: User
}
