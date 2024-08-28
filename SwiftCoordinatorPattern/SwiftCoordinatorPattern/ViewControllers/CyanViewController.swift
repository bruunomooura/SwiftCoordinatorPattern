//
//  CyanViewController.swift
//  SwiftCoordinatorPattern
//
//  Created by Bruno Moura on 28/08/24.
//

import Foundation
import UIKit

final class CyanViewController: UIViewController, Finishable {
    var finish: (() -> Void)?
    
    lazy var okButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Finalizar tela", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func buttonAction() {
        finish?()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        buildView()
    }
    
    private func buildView() {
        buildHierarchy()
        buildConstraints()
    }
    
    private func buildHierarchy() {
        view.addSubview(okButton)
    }
    
    private func buildConstraints() {
        NSLayoutConstraint.activate([
            okButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            okButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
    }
}
