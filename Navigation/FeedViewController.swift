//
//  FeedViewController.swift
//  Navigation
//
//  Created by Миронов Илья on 25.09.2021.
//

import UIKit

class FeedViewController: UIViewController {
    
    let btnShowPostView = UIButton()
    var postData = Post()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        
        postData.setTitle("ABC")
        btnShowPostView.backgroundColor = .green
        btnShowPostView.setTitle("Show Post", for: .normal)
        btnShowPostView.setTitleColor(.black, for: .normal)
        let btnMarginX = self.view.bounds.size.width/2.0 - 100.0
        btnShowPostView.frame = CGRect(x: btnMarginX, y: 200.0, width: 200.0, height: 44.0)
        btnShowPostView.addTarget(self, action: #selector(showPostViewCallBack), for: .touchUpInside)
        self.view.addSubview(btnShowPostView)
    }
    
    @objc func showPostViewCallBack() {
        print(#function)
        let postViewController = PostViewController()
        postViewController.post = self.postData
        self.navigationController?.pushViewController(postViewController, animated: true)
    }
}
