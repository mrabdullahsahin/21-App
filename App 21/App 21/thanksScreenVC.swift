//
//  mainScreenVC.swift
//  App 21
//
//  Created by Abdullah on 16.06.2017.
//  Copyright © 2017 kodamanlabs. All rights reserved.
//

import UIKit

class thanksScreenVC: UIViewController {
    
    //MARK: Main fonksiyonu
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view nesnemiz için arka plan görseli olarak background nesnesi atandı.
        self.view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 100)
        
        setupViews()
    }
    
    //MARK: welcomeLabel nesnesi oluşturuldu.
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.text = "Hoş Geldiniz"
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        label.font = UIFont(name: "Avenir-Book", size: 24)
        label.frame = CGRect(x: 0, y: 0, width: 140, height: 33)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: thanksLabel nesnesi oluşturuldu.
    let thanksLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 3
        label.text = "Uygulamayı indirdiğiniz için teşekkürler. Keyifli bir zaman geçirmeniz dileğimizle."
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        label.font = UIFont(name: "Avenir-Book", size: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: startButton nesnesi oluşturuldu.
    let startButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "next_button_bg"), for: .normal)
        button.setTitle("Kullanmaya Başla", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(nextAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: logoImage nesnesi oluşturuldu.
    let logoImage: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "logo")
        image.translatesAutoresizingMaskIntoConstraints = false
        //image.accessibilityFrame = CGRect(x: 0, y: 0, width: 90, height: 90)
        image.contentMode = .center
        return image
    }()
    
    //MARK: navigationBar gizlendi.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    //MARK: statusbar gizlendi.
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    //MARK: nextAction durumu
    func nextAction(sender: UIButton!){
        
    }
    
    //MARK: nesnelerin ekrandaki düzenleri belirleniyor.
    func setupViews(){
        //MARK: Nesneler ekrana ekleniyor.
        view.addSubview(welcomeLabel)
        view.addSubview(logoImage)
        view.addSubview(thanksLabel)
        view.addSubview(startButton)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        let welcomeLabelTop = NSLayoutConstraint(item: welcomeLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 50.0)
        let welcomeLabelCenter = NSLayoutConstraint(item: welcomeLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let logoTop = NSLayoutConstraint(item: logoImage, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 203.0)
        let logoCenter = NSLayoutConstraint(item: logoImage, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let thanksLabelTop = NSLayoutConstraint(item: thanksLabel, attribute: .top, relatedBy: .equal, toItem: self.logoImage, attribute: .top, multiplier: 1.0, constant: 200.0)
        let thanksLabelLeading = NSLayoutConstraint(item: thanksLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 5.0)
        let thanksLabelCenter = NSLayoutConstraint(item: thanksLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let startButtonTop = NSLayoutConstraint(item: startButton, attribute: .top, relatedBy: .equal, toItem: self.thanksLabel, attribute: .top, multiplier: 1.0, constant: 100.0)
        let startButtonCenter = NSLayoutConstraint(item: startButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        //let startButtonLeading = NSLayoutConstraint(item: startButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 100.0)
        
        
        //MARK: Nesnelerin constraint değerleri ekrana ekleniyor.
        NSLayoutConstraint.activate([welcomeLabelTop,welcomeLabelCenter,logoTop,logoCenter,thanksLabelTop,thanksLabelLeading,thanksLabelCenter,startButtonTop,startButtonCenter])
    }
    
}























































