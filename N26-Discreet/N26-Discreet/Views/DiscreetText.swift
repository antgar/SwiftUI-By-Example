//
//  DiscreetText.swift
//  N26-Discreet
//
//  Created by Antoine Garcia on 10/06/2019.
//  Copyright © 2019 antgar. All rights reserved.
//

import SwiftUI

struct DiscreetText : View {
    var text: String
    var isBlurred: Bool
    var body: some View {
        Text(text)
            .blur(radius: isBlurred ? 4 : 0)
    }
}

#if DEBUG
struct DiscreetText_Previews : PreviewProvider {
    static var previews: some View {
        DiscreetText(text: "150€",
                     isBlurred: false)
    }
}
#endif
