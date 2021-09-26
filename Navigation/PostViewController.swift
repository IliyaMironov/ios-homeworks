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

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .purple
        self.navigationItem.title = post.title
        //self.tabBarItem = UIBarButtonItem()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Show Info", style: .plain, target: self, action: #selector(showSubView))
    }

    @objc func showSubView() {
        print(#function)
        let infoViewController = InfoViewController()
        self.present(infoViewController, animated: true, completion: nil)
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
