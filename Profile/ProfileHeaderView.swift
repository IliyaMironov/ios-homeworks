//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Миронов Илья on 06.10.2021.
//

import UIKit

class ProfileHeaderView: UIView {
    
    lazy var titleLable: UILabel = {
        let lable = UILabel()
        lable.textColor = UIColor.black
        lable.text = "Hipster Cat"
        lable.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        lable.sizeToFit()
        return lable
       }()
    
    lazy var statusLable: UILabel = {
        let text = UILabel()
        text.textColor = UIColor.gray
        text.text = "Waiting for something..."
        text.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        text.frame = CGRect(origin: .zero, size: .zero)
        text.sizeToFit()
        return text
       }()
    
    lazy var avaImage: UIImageView = {
        let img = UIImageView()
        img.frame = CGRect(origin: .zero, size: CGSize(width: 100, height: 100))
        let bgImage = UIImage(named: "ImageAva")
        img.image = bgImage
        img.layer.cornerRadius = 50
        img.layer.borderWidth = 3
        img.layer.borderColor = CGColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1.0)
        img.layer.masksToBounds = true
        return img
    }()
    
    lazy var btnShowStatus: UIButton = {
        let btn = UIButton()
        btn.setTitle("Show status", for: .normal)
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        self.layer.borderColor = .init(gray: 0, alpha: 0)
        self.addSubview(avaImage)
        self.addSubview(titleLable)
        self.addSubview(statusLable)
        self.addSubview(btnShowStatus)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        statusLable.translatesAutoresizingMaskIntoConstraints = false
        avaImage.translatesAutoresizingMaskIntoConstraints = false
        btnShowStatus.translatesAutoresizingMaskIntoConstraints = false
        
        let constrains = [
            avaImage.widthAnchor.constraint(equalToConstant: 100),
            avaImage.heightAnchor.constraint(equalToConstant: 100),
            avaImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            avaImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            
            btnShowStatus.heightAnchor.constraint(equalToConstant: 50),
            btnShowStatus.topAnchor.constraint(equalTo: avaImage.bottomAnchor, constant: 16),
            btnShowStatus.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            btnShowStatus.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            
            titleLable.leftAnchor.constraint(equalTo: self.avaImage.rightAnchor, constant: 20),
            titleLable.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27.0),
            
            statusLable.leftAnchor.constraint(equalTo: self.avaImage.rightAnchor, constant: 20),
            statusLable.bottomAnchor.constraint(equalTo: self.btnShowStatus.topAnchor, constant: -34.0)
        ]
        
        NSLayoutConstraint.activate(constrains)
    }
    
    @objc func buttonPressed() {
        print(statusLable.text!)
    }
}
