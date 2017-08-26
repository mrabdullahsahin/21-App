//
//  settingsScreenVC.swift
//  Number 21
//
//  Created by Abdullah on 26.08.2017.
//  Copyright © 2017 abdullah. All rights reserved.
//

import UIKit
import PureLayout // auto-layout işlemi için gerekli kütüphane.

class settingsScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: navigationBar gizlendi.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    //MARK: statusbar gizlendi.
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    //MARK: geriButton oluşturuldu.
    let geriButton : UIButton = {
        let button = UIButton.newAutoLayout()
        button.otherDesign()
        button.setTitle("Geri", for: .normal)
        button.addTarget(self, action: #selector(backButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: infobg nesnesi oluşturuldu.
    let infoBg : UIView = {
        let Bg = UIView.newAutoLayout()
        Bg.layer.cornerRadius = 5
        Bg.backgroundColor = UIColor.darkBlueColor()
        return Bg
    }()
    
    //MARK: appLogo nesnesi oluşturuldu.
    let appLogo : UIImageView = {
        let image = UIImageView.newAutoLayout()
        image.image = UIImage(named: "settings_app_logo")
        return image
    }()
    
    //MARK: versiyonLabel nesnesi oluşturuldu.
    let versiyonLabel : UILabel = {
        let label = UILabel.newAutoLayout()
        label.text = "Versiyon"
        label.textColor = UIColor.white
        label.font = UIFont.allFontType(withSize: 14)
        label.numberOfLines = 1
        label.textAlignment = .center
        return label
    }()
    
    //MARK: versiyonnumberLabel nesnesi oluşturuldu.
    let versiyonNumberLabel : UILabel = {
        let label = UILabel.newAutoLayout()
        label.text = "1.0.0"
        label.textColor = UIColor.white
        label.font = UIFont.allFontType(withSize: 14)
        label.numberOfLines = 1
        label.textAlignment = .center
        return label
    }()
    
    //MARK: madeLabel nesnesi oluşturuldu.
    let madeLabel : UILabel = {
        let label = UILabel.newAutoLayout()
        label.text = "Türkiye'de Üretilmiştir."
        label.textColor = UIColor.white
        label.font = UIFont.allFontType(withSize: 14)
        label.numberOfLines = 1
        label.textAlignment = .center
        return label
    }()
    
    //MARK: rateButton nesnesi oluşturuldu.
    let oyButton : UIButton = {
        let button = UIButton.newAutoLayout()
        button.allDesign()
        button.setTitle("App Store'da Bize Destek Ol", for: UIControlState.normal)
        button.titleLabel?.font = UIFont.allFontType(withSize: 20)
        return button
    }()
    
    var didSetupConstraints = false
    
    //MARK: backButton fonksiyonu.
    func backButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
    }
    
    // MARK: - nesneler ekrana yerleştiriliyor.
    override func loadView() {
        view = UIView()
        view.backgroundColor = UIColor.white
        
        view.addSubview(geriButton)
        view.addSubview(infoBg)
        infoBg.addSubview(appLogo)
        infoBg.addSubview(versiyonLabel)
        infoBg.addSubview(versiyonNumberLabel)
        infoBg.addSubview(madeLabel)
        view.addSubview(oyButton)
        
        view.setNeedsUpdateConstraints()
    }
    
    // MARK: - nesnelerin auto-layout işlemi gerçekleştiriliyor.
    override func updateViewConstraints() {
        
        if (!didSetupConstraints){
            
            // MARK: - geriButton auto-layout işlemi gerçekleştiriliyor.
            geriButton.autoPin(toTopLayoutGuideOf: self, withInset: 10.0)
            geriButton.autoPinEdge(toSuperviewEdge: .leading, withInset: 30.0)
            
            // MARK: - infoBg auto-layout işlemi gerçekleştiriliyor.
            infoBg.autoSetDimensions(to: CGSize(width: 317, height: 188))
            infoBg.autoPinEdge(.top, to: .bottom, of: geriButton, withOffset: 20.0)
            infoBg.autoPinEdge(toSuperviewEdge: .leading, withInset: 30.0)
            infoBg.autoPinEdge(toSuperviewEdge: .trailing, withInset: 30.0)
            
            // MARK: - appLogo auto-layout işlemi gerçekleştiriliyor.
            appLogo.autoPinEdge(toSuperviewEdge: .top, withInset: 10.0)
            appLogo.autoAlignAxis(.vertical, toSameAxisOf: infoBg)
            
            // MARK: - versiyonLabel auto-layout işlemi gerçekleştiriliyor.
            versiyonLabel.autoPinEdge(.top, to: .bottom, of: appLogo, withOffset: 5.0)
            versiyonLabel.autoAlignAxis(toSuperviewAxis: .vertical)
            
            // MARK: - versiyonNumberLabel auto-layout işlemi gerçekleştiriliyor.
            versiyonNumberLabel.autoPinEdge(.top, to: .bottom, of: versiyonLabel, withOffset: 3.0)
            versiyonNumberLabel.autoAlignAxis(toSuperviewAxis: .vertical)
            
            // MARK: - madeLabel auto-layout işlemi gerçekleştiriliyor.
            madeLabel.autoPinEdge(.top, to: .bottom, of: infoBg, withOffset: -20.0)
            madeLabel.autoAlignAxis(toSuperviewAxis: .vertical)
            
            // MAKR: - oyButton auto-layout işlemi gerçekleştiriliyor.
            oyButton.autoPinEdge(.top, to: .bottom, of: infoBg, withOffset: 15.0)
            oyButton.autoPinEdge(toSuperviewEdge: .trailing, withInset: 29.0)
            oyButton.autoPinEdge(toSuperviewEdge: .leading, withInset: 29.0)
            
            didSetupConstraints = true
        }
        
        super.updateViewConstraints()
    }

}
