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
        
        //arkaplan nesne belirlendi ve resim atandı.
        let backgroundImage = #imageLiteral(resourceName: "background")
        //view nesnemiz için arka plan görseli olarak background nesnesi atandı.
        self.view.backgroundColor = UIColor(patternImage: backgroundImage)
        
        setupViews()
    }
    
    //MARK: welcomeLabel nesnesi oluşturuldu.
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.text = "Hoş Geldiniz"
        label.textColor = UIColor.white
        label.font = UIFont(name: "Avenir-Book", size: 24)
        label.frame = CGRect(x: 0, y: 0, width: 140, height: 33)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: thanksLabel nesnesi oluşturuldu.
    let thanksLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "Satın aldığınız için teşekkürler. Keyifli bir zaman geçirmeniz dileğimizle."
        label.textColor = UIColor.white
        label.font = UIFont(name: "Avenir-Book", size: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: startButton nesnesi oluşturuldu.
    let startButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "next_button_bg"), for: .normal)
        //button.setTitle("Kullanmaya Başla", for: UIControlState)
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
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-20-[welcomeLabel]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["welcomeLabel": welcomeLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[logoImage]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["logoImage" : logoImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-2-[thanksLabel]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["thanksLabel" : thanksLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[startButton]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["startButton" : startButton]))
        
        //MARK: Nesnelerin birbirine olan constraint değerleri belirleniyor.
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[welcomeLabel]-120-[logoImage]", options: NSLayoutFormatOptions(), metrics: nil, views: ["welcomeLabel": welcomeLabel ,"logoImage" : logoImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[logoImage]-105-[thanksLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["logoImage" : logoImage, "thanksLabel" : thanksLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[thanksLabel]-95-[startButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["thanksLabel" : thanksLabel, "startButton" : startButton]))
        
        //let constw = NSLayoutConstraint(item: self.welcomeLabel, attribute: .width, relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .width, multiplier: 1.0, constant: 250)
        //let consth = NSLayoutConstraint(item: self.welcomeLabel, attribute: .height, relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .height, multiplier: 1.0, constant: 0)
        
        //let centerX = NSLayoutConstraint(item: welcomeLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1.0, constant: 0)
        //let centerY = NSLayoutConstraint(item: self.welcomeLabel, attribute: .centerY, relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        //self.view.addConstraints([centerX])
    }
    
}























































