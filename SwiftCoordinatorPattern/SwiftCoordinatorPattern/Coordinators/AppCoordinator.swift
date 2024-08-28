//
//  AppCoordinator.swift
//  SwiftCoordinatorPattern
//
//  Created by Bruno Moura on 28/08/24.
//

import Foundation

final class AppCoordinator: Coordinatable {
    let router: Presentable
    var childCoordinator: [Coordinatable] = []
    
    init(router: Presentable) {
        self.router = router
    }
    
    func start() {
        showRedFlow()
    }
    
    private func showRedFlow() {
        let coordinator = RedColorCoordinator(router: router)
        coordinator.finish = { [weak self] in
            self?.showBlueFlow()
        }
        childCoordinator.append(coordinator)
        coordinator.start()
    }
    
    private func showBlueFlow() {
        let coordinator = BlueColorCoordinator(router: router)
        coordinator.finish = { [weak self] in
            self?.childCoordinator.removeAll()
            self?.showRedFlow()
        }
        childCoordinator.append(coordinator)
        coordinator.start()
    }
}
