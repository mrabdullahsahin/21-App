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
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
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
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        label.font = UIFont(name: "Avenir-Book", size: 18)
        label.textAlignment = .center
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
    
    //MARK: againButton nesnesi oluşturuldu
    let againButton: UIButton = {
       let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "againButton_bg"), for: .normal)
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
    
    //MARK: Nesneler ekrana ekleniyor ve constraint değerleri belirleniyor.
    func setupViews(){
        //MARK: Nesneler ekrana ekleniyor.
        view.addSubview(winLabel)
        view.addSubview(senteceLabel)
        view.addSubview(mainButton)
        view.addSubview(againButton)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        let winLabelTop = NSLayoutConstraint(item: winLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 100)
        let winLabelCenter = NSLayoutConstraint(item: winLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let sentenceLabelTop = NSLayoutConstraint(item: senteceLabel, attribute: .top, relatedBy: .equal, toItem: self.winLabel, attribute: .top, multiplier: 1.0, constant: 100)
        let sentenceLabelCenter = NSLayoutConstraint(item: senteceLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let sentenceLabelLeading = NSLayoutConstraint(item: senteceLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 0.0)
        
        let mainButtonTop = NSLayoutConstraint(item: mainButton, attribute: .top, relatedBy: .equal, toItem: self.senteceLabel, attribute: .top, multiplier: 1.0, constant: 200)
        let mainButtonLeading = NSLayoutConstraint(item: mainButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 110)
        
        let againButtonTop = NSLayoutConstraint(item: againButton, attribute: .top, relatedBy: .equal, toItem: self.senteceLabel, attribute: .top, multiplier: 1.0, constant: 200)
        let againButtonLeading = NSLayoutConstraint(item: againButton, attribute: .leading, relatedBy: .equal, toItem: self.mainButton, attribute: .leading, multiplier: 1.0, constant: 75)
        
        //MARK: Nesnelerin constraint değerleri ekrana ekleniyor.
        NSLayoutConstraint.activate([winLabelTop,winLabelCenter,sentenceLabelTop,sentenceLabelCenter,sentenceLabelLeading,mainButtonTop,mainButtonLeading,againButtonLeading,againButtonTop])
    }
}
