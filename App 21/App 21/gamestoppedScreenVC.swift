//
//  gamestoppedScreenVC.swift
//  App 21
//
//  Created by Abdullah on 20.06.2017.
//  Copyright © 2017 kodamanlabs. All rights reserved.
//

import UIKit

//MARK: Fatih'in söyleyeceği cümleler.
let saysSentece = ["Korktun Heralde.", "Seni bulacağım oğlum, seni bulacağım."]

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
        label.textColor = UIColor.black
        label.font = UIFont(name: "Avenir-Book", size: 100)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    //MARK: Says label nesnesi oluşturuldu.
    let saysLabel: UILabel = {
        let label = UILabel()
        label.text = "Fatih diyor ki: '\(saysSentece[0])!'"
        label.numberOfLines = 5
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Book", size: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: mainButton nesnesi oluşturuldu.
    let mainButton: UIButton = {
       let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "mainButton_bg"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: againButton nesnesi oluşturuldu.
    let againButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "againButton_bg"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: Nesneler ekrana ekleniyor ve constraint değeri belirleniyor.
    func setupViews(){
        //MARK: Nesneler ekrana ekleniyor.
        view.addSubview(number21Label)
        view.addSubview(saysLabel)
        view.addSubview(mainButton)
        view.addSubview(againButton)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[numberLabel]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["numberLabel" : number21Label]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[saysLabel]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["saysLabel" : saysLabel]))
        
        //MARK: Nesnelerin birbirleri ile olan constraint değerler belirleniyor.
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topGuide]-90-[numberLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topGuide" : topLayoutGuide, "numberLabel" :  number21Label]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[numberLabel]-70-[saysLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["numberLabel" : number21Label, "saysLabel" : saysLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[saysLabel]-100-[mainButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["saysLabel" : saysLabel, "mainButton" : mainButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[saysLabel]-100-[againButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["saysLabel" : saysLabel, "againButton" : againButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[mainButton]-50-[againButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["mainButton" : mainButton, "againButton" : againButton]))
    }
}




































