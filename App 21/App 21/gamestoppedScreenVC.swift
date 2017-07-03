//
//  gamestoppedScreenVC.swift
//  App 21
//
//  Created by Abdullah on 20.06.2017.
//  Copyright © 2017 kodamanlabs. All rights reserved.
//

import UIKit

//MARK: Fatih'in söyleyeceği cümleler.
let saysSentece = ["Korktun Heralde", "Seni bulacağım kaçma, seni bulacağım"]

class gamestoppedScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Arka Plan rengi belirlendi.
        view.backgroundColor = UIColor.white
        
        setupViews()
    }
    
    //MARK: Navigation bar gizlendi.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    //MARK: Status bar gizlendi.
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    //MARK: 21 yazacak label nesnesi oluşturuldu.
    let number21Label: UILabel = {
        let label = UILabel()
        label.text = "21"
        label.numberOfLines = 1
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        label.font = UIFont(name: "Avenir-Book", size: 100)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    //MARK: Says label nesnesi oluşturuldu.
    let saysLabel: UILabel = {
        let label = UILabel()
        label.text = "Fatih diyor ki: \(saysSentece[1])!'"
        label.numberOfLines = 5
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Book", size: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: mainButton nesnesi oluşturuldu.
    let mainButton: UIButton = {
       let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "mainButton_bg"), for: .normal)
        button.addTarget(self, action: #selector(goMainButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: againButton nesnesi oluşturuldu.
    let againButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "oyuna_devam_et"), for: .normal)
        button.addTarget(self, action: #selector(goAgainButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: goMainButton fonksiyonu. Ana ekrana gidiyor.
    func goMainButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
    }
    
    //MARK: goAgainButton fonksiyonu. Oyunun tekrar başlamasını sağlıyor.
    func goAgainButton(sender: UIButton!){
        self.navigationController?.pushViewController(gameScreenVC(), animated: true)
    }
    
    //MARK: Nesneler ekrana ekleniyor ve constraint değeri belirleniyor.
    func setupViews(){
        //MARK: Nesneler ekrana ekleniyor.
        view.addSubview(number21Label)
        view.addSubview(saysLabel)
        view.addSubview(mainButton)
        view.addSubview(againButton)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        let numberLabelTop = NSLayoutConstraint(item: number21Label, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 90)
        let numberLabelCenter = NSLayoutConstraint(item: number21Label, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let saysLabelTop = NSLayoutConstraint(item: saysLabel, attribute: .top, relatedBy: .equal, toItem: self.number21Label, attribute: .top, multiplier: 1.0, constant: 125)
        let saysLabelCenter = NSLayoutConstraint(item: saysLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let saysLabelLeading = NSLayoutConstraint(item: saysLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10)
        
        let mainButtonTop = NSLayoutConstraint(item: mainButton, attribute: .top, relatedBy: .equal, toItem: self.saysLabel, attribute: .top, multiplier: 1.0, constant: 200)
        let mainButtonLeading = NSLayoutConstraint(item: mainButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 110)
        
        let againButtonTop = NSLayoutConstraint(item: againButton, attribute: .top, relatedBy: .equal, toItem: self.saysLabel, attribute: .top, multiplier: 1.0, constant: 200)
        let againButtonLeading = NSLayoutConstraint(item: againButton, attribute: .leading, relatedBy: .equal, toItem: self.mainButton, attribute: .leading, multiplier: 1.0, constant: 75)
        
        //MARK: Nesnelerin constraint değerleri ekrana ekleniyor.
        NSLayoutConstraint.activate([numberLabelTop,numberLabelCenter,saysLabelTop,saysLabelCenter,saysLabelLeading,mainButtonTop,mainButtonLeading,againButtonTop,againButtonLeading])
    }
}




































