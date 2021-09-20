//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Миронов Илья on 20.09.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let view = Bundle.main.loadNibNamed("ProfileView", owner: self, options: nil)![0] as! UIView
        self.view.addSubview(view)
        
    }


}
