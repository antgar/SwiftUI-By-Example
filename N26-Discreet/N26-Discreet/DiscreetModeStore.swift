//
//  DiscreetModeStore.swift
//  N26-Discreet
//
//  Created by Antoine Garcia on 10/06/2019.
//  Copyright © 2019 antgar. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class DiscreetModeStore: BindableObject {
    let didChange = PassthroughSubject<DiscreetModeStore, Never>()
    private(set) var isBlur = true {
        didSet {didChange.send(self)}
    }
    init() {
        UIDevice.current.isProximityMonitoringEnabled = true
        guard UIDevice.current.isProximityMonitoringEnabled == true else {
            return
        }
        _ = NotificationCenter.default.publisher(for: UIDevice.proximityStateDidChangeNotification)
            .filter {_ in UIDevice.current.proximityState == true}
            .sink { notification in
                self.isBlur.toggle()
        }
    }
}
