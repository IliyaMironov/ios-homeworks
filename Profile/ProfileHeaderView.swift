//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Миронов Илья on 06.10.2021.
//

import UIKit

class ProfileHeaderView: UIView {
    let ptSageAreaMargin = CGFloat(90.0)
    
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
        text.frame = CGRect(origin: CGPoint(x: 100, y: 100 + ptSageAreaMargin), size: .zero)
        text.sizeToFit()
        return text
       }()
    
    lazy var avaImage: UIView = {
        let img = UIView()
        img.frame = CGRect(origin: CGPoint(x: 16, y: 16 + ptSageAreaMargin), size: CGSize(width: 100, height: 100))
        let bgImage = UIImage(named: "ImageAva")
        
        img.backgroundColor = UIColor(patternImage: UIImage(named: "ImageAva")!)
        img.layer.cornerRadius = 50
        img.layer.borderWidth = 3
        img.layer.borderColor = CGColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1.0)
        
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
        self.layer.borderWidth = 16
        self.layer.borderColor = .init(gray: 0, alpha: 0)
        self.addSubview(titleLable)
        self.addSubview(avaImage)
        self.addSubview(statusLable)
        self.addSubview(btnShowStatus)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let positionAvaImage = avaImage.frame.origin
        titleLable.frame = CGRect(origin: CGPoint(x: positionAvaImage.x + avaImage.frame.width + 16, y: 27 + ptSageAreaMargin), size: CGSize(width: titleLable.frame.width, height: titleLable.frame.height))
        
        btnShowStatus.frame = CGRect(origin: CGPoint(x: 16, y: positionAvaImage.y + avaImage.frame.height + 16), size: CGSize(width: self.bounds.width - 16*2, height: 50))
        let positionBtnShowStatus = btnShowStatus.frame.origin
        statusLable.frame = CGRect(origin: CGPoint(x: positionAvaImage.x + avaImage.frame.width + 16, y: positionBtnShowStatus.y - statusLable.frame.height - 32), size: CGSize(width: statusLable.frame.width, height: statusLable.frame.height))
        
    }
    
    @objc func buttonPressed() {
        print(statusLable.text!)
    }
}
