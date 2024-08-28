//
//  RedFactory.swift
//  SwiftCoordinatorPattern
//
//  Created by Bruno Moura on 28/08/24.
//

import Foundation

enum RedFactory {
    static func makeRed() -> FinishController {
        RedViewController()
    }
    
    static func makeMagenta() -> FinishController {
        MagentaViewController()
    }
}
