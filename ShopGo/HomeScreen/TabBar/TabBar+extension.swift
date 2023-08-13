//
//  TabBar+extension.swift
//  ShopGo
//
//  Created by Ali Ahmed on 8/13/23.
//

import UIKit

extension HomeViewController {
    func tabBarSetup() {
        view.addSubview(cartfloatingButton)
        cartfloatingButton.addTarget(self, action: #selector(cartFloatingButtonTapped), for: .touchUpInside)
        NSLayoutConstraint.activate([
            cartfloatingButton.widthAnchor.constraint(equalToConstant: 60),
            cartfloatingButton.heightAnchor.constraint(equalToConstant: 60),
            cartfloatingButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            cartfloatingButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
        ])
    }
    
    @objc func cartFloatingButtonTapped() {
        let vc = UIStoryboard(name: "TestCart", bundle: nil).instantiateViewController(withIdentifier: "TestCartViewController") as! TestCartViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}
