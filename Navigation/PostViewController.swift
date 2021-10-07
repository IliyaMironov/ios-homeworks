//
//  PostViewController.swift
//  Navigation
//
//  Created by Миронов Илья on 25.09.2021.
//

import UIKit

class PostViewController: UIViewController {
    
    var post = Post()
    let btnItem = UIBarButtonItem()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .purple
        self.navigationItem.title = post.title
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Show Info", style: .plain, target: self, action: #selector(showInfoSubView))
    }

    @objc func showInfoSubView() {
        print(#function)
        let infoViewController = InfoViewController()
        self.present(infoViewController, animated: true, completion: nil)
    }
}
