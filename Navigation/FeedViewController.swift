//
//  FeedViewController.swift
//  Navigation
//
//  Created by Миронов Илья on 25.09.2021.
//

import UIKit

class FeedViewController: UIViewController {
    
    let btn = UIButton()
    var post = Post()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        // Do any additional setup after loading the view.
        
        
        post.setTitle("ABC")
        btn.backgroundColor = .green
        btn.frame = CGRect(x: 40.0, y: 200.0, width: 200.0, height: 44.0)
        btn.addTarget(self, action: #selector(btnCallBack), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    
    @objc func btnCallBack() {
        print(#function)
        let postViewController = PostViewController()
        postViewController.post = self.post
        self.navigationController?.pushViewController(postViewController, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
