//
//  Coordinatable.swift
//  SwiftCoordinatorPattern
//
//  Created by Bruno Moura on 28/08/24.
//

import Foundation

protocol Coordinatable {
    var router: Presentable { get }
    init(router: Presentable)
    func start()
}
