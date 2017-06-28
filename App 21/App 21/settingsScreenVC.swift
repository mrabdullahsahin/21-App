//
//  settingsScreenVC.swift
//  App 21
//
//  Created by Abdullah on 20.06.2017.
//  Copyright © 2017 kodamanlabs. All rights reserved.
//

import UIKit

class settingsScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Arka plan resmi belirlendi.
        view.backgroundColor = UIColor.white
        
        setupviews()
    }
    
    //MARK: Navigation bar gizlendi
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    //MARK: Status bar gizlendi.
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    //MARK: backButton nesnesi oluşturuldu.
    let backButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 5
        button.setTitle("Geri", for: UIControlState.normal)
        button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 36)
        button.addTarget(self, action: #selector(backMainButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: infobg nesnesi oluşturuldu.
    let infoBg : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "infoBG")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.frame = CGRect(x: 0, y: 0, width: 317, height: 188)
        return image
    }()
    
    //MARK: appLogo nesnesi oluşturuldu.
    let appLogo : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "settings_app_logo")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    //MARK: versiyonLabel nesnesi oluşturuldu.
    let versionLabel : UILabel = {
       let label = UILabel()
        label.text = "Versiyon"
        label.textColor = UIColor.white
        label.font = UIFont(name: "Avenir-Book", size: 14)
        label.numberOfLines = 1
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: versionnumberLabel nesnesi oluşturuldu.
    let versionNumberLabel : UILabel = {
       let label = UILabel()
        label.text = "0.0.1"
        label.textColor = UIColor.white
        label.font = UIFont(name: "Avenir-Book", size: 14)
        label.numberOfLines = 1
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: madeLabel nesnesi oluşturuldu.
    let madeLabel : UILabel = {
       let label = UILabel()
        label.text = "Türkiye'de Üretilmiştir."
        label.textColor = UIColor.white
        label.font = UIFont(name: "Avenir-Book", size: 14)
        label.numberOfLines = 1
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: feedbackButton nesnesi oluşturuldu.
    let istekButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        button.layer.cornerRadius = 5
        button.setTitle("İstek ve Görüşleriniz", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 20)
        button.addTarget(self, action: #selector(feedbackButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: rateButton nesnesi oluşturuldu.
    let oyButton : UIButton = {
      let button = UIButton()
        button.backgroundColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        button.layer.cornerRadius = 5
        button.setTitle("App Store'da Bize Destek Ol", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 20)
        button.addTarget(self, action: #selector(rateButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: startButton fonksiyonu. Oyunu başlatıyor.
    func backMainButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
    }
    
    //MARK: feedbackButton fonksiyonu. Geri bildirim ekranına yönlendiriyor.
    func feedbackButton(sender: UIButton!){
        self.navigationController?.pushViewController(feedbackScreenVC(), animated: true)
    }
    
    //MARK: feedbackButton fonksiyonu. Geri bildirim ekranına yönlendiriyor.
    func rateButton(sender: UIButton!){
        self.navigationController?.pushViewController(settingsScreenVC(), animated: true)
    }
    
    //MARK: Nesneler ekrana ekleniyor ve constraint değerleri belirleniyor.
    func setupviews(){
        //MARK: Nesneler ekrana ekleniyor.
        view.addSubview(backButton)
        view.addSubview(infoBg)
        view.addSubview(appLogo)
        view.addSubview(versionLabel)
        view.addSubview(versionNumberLabel)
        view.addSubview(madeLabel)
        view.addSubview(istekButton)
        view.addSubview(oyButton)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        let backButtonTop = NSLayoutConstraint(item: backButton, attribute:.top, relatedBy: .equal, toItem: self.view, attribute:.top, multiplier: 1.0, constant: 19)
        let backButtonLeading = NSLayoutConstraint(item: backButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 30)
        
        let infoBGTop = NSLayoutConstraint(item: infoBg, attribute: .top, relatedBy: .equal, toItem: self.backButton, attribute: .top, multiplier: 1.0, constant: 60)
        let infoBGCenter = NSLayoutConstraint(item: infoBg, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let infoBGWidth = NSLayoutConstraint(item: infoBg, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 300)
        
        let appLogoTop = NSLayoutConstraint(item: appLogo, attribute: .top, relatedBy: .equal, toItem: self.infoBg, attribute: .top, multiplier: 1.0, constant: 15)
        let appLogoCenter = NSLayoutConstraint(item: appLogo, attribute: .centerX, relatedBy: .equal, toItem: self.infoBg, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let versionLabelTop = NSLayoutConstraint(item: versionLabel, attribute: .top, relatedBy: .equal, toItem: self.appLogo, attribute: .top, multiplier: 1.0, constant: 55)
        let versionLabelCenter = NSLayoutConstraint(item: versionLabel, attribute: .centerX, relatedBy: .equal, toItem: self.infoBg, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let versionNumberLabelTop = NSLayoutConstraint(item: versionNumberLabel, attribute: .top, relatedBy: .equal, toItem: self.versionLabel, attribute: .top, multiplier: 1.0, constant: 20)
        let versionNumberLabelCenter = NSLayoutConstraint(item: versionNumberLabel, attribute: .centerX, relatedBy: .equal, toItem: self.infoBg, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let madeLabelTop = NSLayoutConstraint(item: madeLabel, attribute: .top, relatedBy: .equal, toItem: self.versionNumberLabel, attribute: .top, multiplier: 1.0, constant: 75)
        let madeLabelCenter = NSLayoutConstraint(item: madeLabel, attribute: .centerX, relatedBy: .equal, toItem: self.infoBg, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let istekButtonTop = NSLayoutConstraint(item: istekButton, attribute: .top, relatedBy: .equal, toItem: self.infoBg, attribute: .top, multiplier: 1.0, constant: 200)
        let istekButtonCenter = NSLayoutConstraint(item: istekButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let istekButtonHeight = NSLayoutConstraint(item: istekButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 75)
        let istekButtonWidth = NSLayoutConstraint(item: istekButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 297)
        
        let oyButtonTop = NSLayoutConstraint(item: oyButton, attribute: .top, relatedBy: .equal, toItem: self.istekButton, attribute: .top, multiplier: 1.0, constant: 85)
        let oyButtonCenter = NSLayoutConstraint(item: oyButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let oyButtonHeight = NSLayoutConstraint(item: oyButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 75)
        let oyButtonWidth = NSLayoutConstraint(item: oyButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 297)
        
        //MARK: Nesnelerin constraint değerleri ekrana ekleniyor.
        NSLayoutConstraint.activate([backButtonTop,backButtonLeading,infoBGTop,infoBGCenter,infoBGWidth,appLogoTop,appLogoCenter,versionLabelTop,versionLabelCenter,versionNumberLabelTop,versionNumberLabelCenter,madeLabelTop,madeLabelCenter,istekButtonTop,istekButtonCenter,istekButtonHeight,istekButtonWidth,oyButtonTop,oyButtonWidth,oyButtonCenter,oyButtonHeight])
    }
}










































