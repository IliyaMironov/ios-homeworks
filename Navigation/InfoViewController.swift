//
//  InfoViewController.swift
//  Navigation
//
//  Created by Миронов Илья on 26.09.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    let btnShowAlert = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        btnShowAlert.backgroundColor = .green
        btnShowAlert.setTitle("Show Alert", for: .normal)
        btnShowAlert.setTitleColor(.black, for: .normal)
        let btnMarginX = self.view.bounds.size.width/2.0 - 100.0
        btnShowAlert.frame = CGRect(x: btnMarginX, y: 200.0, width: 200.0, height: 44.0)
        btnShowAlert.addTarget(self, action: #selector(btnShowAlertCallBack), for: .touchUpInside)
        self.view.addSubview(btnShowAlert)
    }
    
    func confirmActionHandler(alert: UIAlertAction!) {
        print("OK!")
    }
    
    func cancelActionHandler(alert: UIAlertAction!) {
        print("Calcel!")
    }
    
    @objc func btnShowAlertCallBack() {
        print(#function)
        let alertViewController = UIAlertController(title: "Alert", message: "It is ok!", preferredStyle: .alert)
        alertViewController.addAction(UIAlertAction(title: "Ok",
                                                    style: UIAlertAction.Style.default,
                                                    handler: confirmActionHandler))
        
        alertViewController.addAction(UIAlertAction(title: "Calcel",
                                                    style: .cancel,
                                                    handler: cancelActionHandler))
        
        self.present(alertViewController, animated: true, completion: nil)
    }
}
