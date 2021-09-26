//
//  InfoViewController.swift
//  Navigation
//
//  Created by Миронов Илья on 26.09.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    let btn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .yellow
        btn.backgroundColor = .green
        btn.frame = CGRect(x: 40.0, y: 200.0, width: 200.0, height: 44.0)
        btn.addTarget(self, action: #selector(btnCallBack), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    
    func confirmActionHandler(alert: UIAlertAction!) {
        print("OK!")
    }
    
    func cancelActionHandler(alert: UIAlertAction!) {
        print("Calcel!")
    }
    
    @objc func btnCallBack() {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
