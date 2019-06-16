//
//  ContentView.swift
//  N26-Discreet
//
//  Created by Antoine Garcia on 10/06/2019.
//  Copyright © 2019 antgar. All rights reserved.
//

import SwiftUI

extension Transaction: Identifiable {}

struct ContentView : View {
    @EnvironmentObject var discreetModeStore: DiscreetModeStore
    var body: some View {
        List(ContentPreview.transactions) {transaction in
            HStack {
                Text(transaction.name)
                Spacer()
                DiscreetText(text: "\(transaction.amount)",
                    isBlurred: self.discreetModeStore.isBlur)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
        .environmentObject(DiscreetModeStore())
    }
}
#endif
