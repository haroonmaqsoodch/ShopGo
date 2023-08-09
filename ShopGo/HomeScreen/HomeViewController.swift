//
//  HomeViewController.swift
//  ShopGo
//
//  Created by Muhammad Waleed on 27.07.23.
//

import UIKit

class HomeViewController: UIViewController {
    
    let cartfloatingButton = FloatingCart().cartfloatingButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    @IBAction func trendingButtonTapped(_ sender: Any) {
    }
    
    @IBAction func burgerMenuButton(_ sender: Any) {
    }
    
    @IBAction func womenButtonTapped(_ sender: Any) {
    }
    
    @IBAction func childrenButtonTapped(_ sender: Any) {
    }
    
    @IBAction func sideMenu(_ sender: Any) {
    }
    
    @IBAction func cameraButton(_ sender: Any) {
    }
    
}
