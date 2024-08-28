//
//  Finishable.swift
//  SwiftCoordinatorPattern
//
//  Created by Bruno Moura on 28/08/24.
//

import Foundation

protocol Finishable {
    var finish: (() -> Void)? { get set }
}
