//
//  MainViewController.swift
//  SiteAvailability
//
//  Created by lu on 2022/1/15.
//

import UIKit

class MainViewController: UIViewController {
    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow

        button.setTitle("Push", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(button)

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(close))
    }
}

private extension MainViewController {
    @objc func didTapButton() {
        print("tap button")
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func close() {
        print("close")
        dismiss(animated: true, completion: nil)
    }
}
