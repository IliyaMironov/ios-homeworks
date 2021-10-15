//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Миронов Илья on 06.10.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    var profileHeaderView = ProfileHeaderView()
    
    lazy var someBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Some button", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .blue
        btn.layer.cornerRadius = 4
        btn.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        btn.layer.shadowRadius = 4
        btn.layer.shadowColor = CGColor(srgbRed: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        btn.layer.shadowOpacity = 0.7
        btn.addTarget(nil, action: #selector(buttonPressed), for: .touchUpInside)
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Profile"
        self.view.backgroundColor = .lightGray
        self.view.addSubview(profileHeaderView)
        self.view.addSubview(someBtn)
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        someBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let constrains = [
            profileHeaderView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            profileHeaderView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            
            someBtn.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            someBtn.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            someBtn.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            someBtn.heightAnchor.constraint(equalToConstant: 50)
            
        ]
        NSLayoutConstraint.activate(constrains)
        
    }
    
    @objc func buttonPressed() {
        print(#function)
    }
    
//    override func viewWillLayoutSubviews() {
//        self.view.addSubview(profileHeaderView)
//        profileHeaderView.frame = CGRect(x: 0.0, y: 0.0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
//        self.navigationItem.title = "Profile"
//        self.view.backgroundColor = .lightGray
//    }
}
