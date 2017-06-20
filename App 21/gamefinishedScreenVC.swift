//
//  gamefinishedScreenVC.swift
//  App 21
//
//  Created by Abdullah on 19.06.2017.
//  Copyright © 2017 kodamanlabs. All rights reserved.
//

import UIKit

//MARK: Kazanan kişinin tutulduğu nesne.
public var winnerLabel: String = "Fatih Kazandı!"

//Fatih kazandığında yazılaacak olan cümleler.
let winnerSentece = ["Fatih'in İstanbul'u fethettiği yaştayım beni yenebileceğini mi zannetin.","Ses, nefes ve enfes"]

//Fatih yenildiği zaman yazılacak olan cümeler.
let losserSentece = ["Beni ilk yenen kişi sensin.","Yenilen pehlivan güreşe doymazmış gel bir daha kapışalım."]

class gamefinishedScreenVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        setupViews()
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

    //MARK: Kazan kişinin yazıldığı nesne.
    let winLabel: UILabel = {
       let label = UILabel()
        label.text = winnerLabel
        label.numberOfLines = 1
        label.textColor = UIColor.black
        label.font = UIFont(name: "Avenir-Book", size: 36)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: Oyun bittiğinde kazanan ya da kaybedenin durumuna göre ekrana yazılacak cümlelerin yazıldığı nesne.
    let senteceLabel: UILabel = {
       let label = UILabel()
        label.text = winnerSentece[0]
        label.numberOfLines = 5
        label.textColor = UIColor.black
        label.font = UIFont(name: "Avenir-Book", size: 18)
        label.textAlignment = .center
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
    
    //MARK: againButton nesnesi oluşturuldu
    let againButton: UIButton = {
       let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "againButton_bg"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: Nesneler ekrana ekleniyor ve constraint değerleri belirleniyor.
    func setupViews(){
        //MARK: Nesneler ekrana ekleniyor.
        view.addSubview(winLabel)
        view.addSubview(senteceLabel)
        view.addSubview(mainButton)
        view.addSubview(againButton)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[winLabel]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["winLabel" : winLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[senteceLabel]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["senteceLabel" : senteceLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[mainButton]-20-[bottomLayoutGuide]", options: NSLayoutFormatOptions(), metrics: nil, views: ["mainButton" : mainButton, "bottomLayoutGuide" : bottomLayoutGuide]))

        //MARK: Nesnelerin birbiri ile olan constraint değerleri belirleniyor.
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topLayoutGuide]-120-[winLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topLayoutGuide" : topLayoutGuide, "winLabel" : winLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[winLabel]-110-[senteceLabel]", options: NSLayoutFormatOptions(), metrics: nil, views: ["winLabel" : winLabel, "senteceLabel" : senteceLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[senteceLabel]-200-[mainButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["senteceLabel" : senteceLabel, "mainButton" : mainButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[senteceLabel]-200-[againButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["senteceLabel" : senteceLabel, "againButton" : againButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-5-[mainButton]-200-[againButton]-5-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["mainButton" : mainButton, "againButton" : againButton]))
    }
}
