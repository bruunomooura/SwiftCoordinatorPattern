//
//  Presentable.swift
//  SwiftCoordinatorPattern
//
//  Created by Bruno Moura on 28/08/24.
//

import Foundation
import UIKit

protocol Presentable {
    func push(controller: UIViewController)
    func pop()
}
