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
        button.setImage(#imageLiteral(resourceName: "geriBtn"), for: .normal)
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
    
    //MARK: languageBG nesnesi oluşturuldu.
    let languageBg : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "languageBG")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.frame = CGRect(x: 0, y: 0, width: 317, height: 97)
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
    let versionnumberLabel : UILabel = {
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
    
    //MARK: languageLabel nesnesi oluşturuldu.
    let languageLabel : UILabel = {
       let label = UILabel()
        label.text = "Dil Seçenekleri"
        label.textColor = UIColor.white
        label.font = UIFont(name: "Avenir-Book", size: 10)
        label.numberOfLines = 1
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: feedbackButton nesnesi oluşturuldu.
    let feedbackButton : UIButton = {
       let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "feedbackButtonBG"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: feedbackLabel nesnesi oluşturuldu.
    let feedbackLabel : UILabel = {
        let label = UILabel()
        label.text = "İstek ve Görüşleriniz"
        label.textColor = UIColor.white
        label.font = UIFont(name: "Avenir-Book", size: 20)
        label.numberOfLines = 1
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: rateButton nesnesi oluşturuldu.
    let rateButton : UIButton = {
      let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "rateButtonBG"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: rateLabel nesnesi oluşturuldu.
    let rateLabel : UILabel = {
       let label = UILabel()
        label.text = "App Store'da Oy Ver"
        label.textColor = UIColor.white
        label.font = UIFont(name: "Avenir-Book", size: 20)
        label.numberOfLines = 1
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: Nesneler ekrana ekleniyor ve constraint değerleri belirleniyor.
    func setupviews(){
        //MARK: Nesneler ekrana ekleniyor.
        view.addSubview(backButton)
        view.addSubview(infoBg)
        view.addSubview(appLogo)
        view.addSubview(versionLabel)
        view.addSubview(versionnumberLabel)
        view.addSubview(madeLabel)
        view.addSubview(languageBg)
        view.addSubview(languageLabel)
        view.addSubview(feedbackButton)
        view.addSubview(feedbackLabel)
        view.addSubview(rateButton)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[backButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["backButton" : backButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[infoBG]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["infoBG" : infoBg]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-160-[appLogo(50)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["appLogo" : appLogo]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-160-[versionLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["versionLabel" : versionLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-170-[versionNumberLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["versionNumberLabel" : versionnumberLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-125-[madeLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["madeLabel" : madeLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[languageBg]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["languageBg" : languageBg]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-25-[languageLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["languageLabel" : languageLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[feedbackButton]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["feedbackButton" : feedbackButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-125-[feedbackLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["feedbackLabel" : feedbackLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[rateButton]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["rateButton" : rateButton]))
        
        //MARK: Nesnelerin birbiri ile olan constraint değerleri belirleniyıor.
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topGuide]-25-[backButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topGuide" : topLayoutGuide, "backButton" : backButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[backButton]-15-[infoBG]", options: NSLayoutFormatOptions(), metrics: nil, views: ["backButton" : backButton, "infoBG" : infoBg]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topGuide]-70-[appLogo]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topGuide" : topLayoutGuide, "appLogo" : appLogo]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topGuide]-125-[versionLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topGuide" : topLayoutGuide, "versionLabel" : versionLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topGuide]-145-[versionNumberLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topGuide" : topLayoutGuide, "versionNumberLabel" : versionnumberLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topGuide]-220-[madeLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topGuide" : topLayoutGuide, "madeLabel" : madeLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topGuide]-265-[languageBg]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topGuide" : topLayoutGuide, "languageBg" : languageBg]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topGuide]-275-[languageLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topGuide" : topLayoutGuide, "languageLabel" : languageLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topGuide]-375-[feedbackButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topGuide" : topLayoutGuide, "feedbackButton" : feedbackButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topGuide]-407-[feedbackLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topGuide" : topLayoutGuide, "feedbackLabel" : feedbackLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topGuide]-485-[rateButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topGuide" : topLayoutGuide, "rateButton" : rateButton]))
    }
}










































