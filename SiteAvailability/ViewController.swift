//
//  ViewController.swift
//  SiteAvailability
//
//  Created by htlu on 2022/1/15.
//

import UIKit

class ViewController: UIViewController {
    private let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        button.setTitle("Go", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(button)
    }
}

private extension ViewController {
    @objc func didTapButton() {
        //print("tap button")
        let mainViewController = MainViewController()
        mainViewController.title = "Welcome"
        
        let navigationController = UINavigationController(rootViewController: mainViewController)
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true, completion: nil)
    }
}
