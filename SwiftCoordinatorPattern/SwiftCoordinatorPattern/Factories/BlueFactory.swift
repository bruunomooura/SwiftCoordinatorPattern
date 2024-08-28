//
//  BlueFactory.swift
//  SwiftCoordinatorPattern
//
//  Created by Bruno Moura on 28/08/24.
//

import Foundation

enum BlueFactory {
    static func makeBlue() -> FinishController {
        BlueViewController()
    }
    
    static func makeCyan() -> FinishController {
        CyanViewController()
    }
}
