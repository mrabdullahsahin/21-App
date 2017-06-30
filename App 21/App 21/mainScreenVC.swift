//
//  mainScreenVC.swift
//  App 21
//
//  Created by Abdullah on 18.06.2017.
//  Copyright © 2017 kodamanlabs. All rights reserved.
//

import UIKit

class mainScreenVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 254/255, alpha: 100)
        
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
    
    //MARK: 21 yazan label nesnesi oluşturuldu.
    let a21Label: UILabel = {
        let label = UILabel()
        label.text = "21"
        label.numberOfLines = 1
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        label.font = UIFont(name: "Avenir-Book", size: 100)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: baslatButton nesnesi oluşturuldu.
    let baslatButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        button.layer.cornerRadius = 5
        button.setTitle("Başlat", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 36)
        button.addTarget(self, action: #selector(startButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: nasiloynanirButton nesnesi oluşturuldu.
    let nasiloynanirButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        button.layer.cornerRadius = 5
        button.setTitle("Nasıl Oynanır", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 36)
        button.addTarget(self, action: #selector(howToPlayButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: ayarlarButton nesnesi oluşturuldu.
    let ayarlarButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        button.layer.cornerRadius = 5
        button.setTitle("Ayarlar", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 36)
        button.addTarget(self, action: #selector(settingsButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: startButton fonksiyonu. Oyunu başlatan buton.
    func startButton(sender: UIButton!){
        self.navigationController?.pushViewController(gameScreenVC(), animated: true)
    }
    
    //MARK: howToPlayButton fonksiyonu. Nasıl oyunur ekranına gitmesini sağlayan buton.
    func howToPlayButton(sender: UIButton!){
        self.navigationController?.pushViewController(howToPlayScreenVC(), animated: true)
    }
    
    //MARK: settingsButton fonksiyonu. Ayarlar ekranına gitmesini sağlayan buton.
    func settingsButton(sender: UIButton!){
        self.navigationController?.pushViewController(settingsScreenVC(), animated: true)
    }
    
    //MARK: Nesneler ekrana ekleniyor ve constraint değeri belirleniyor.
    func setupViews(){
        //MARK: Nesneler ekranan ekleniyor.
        view.addSubview(a21Label)
        view.addSubview(baslatButton)
        view.addSubview(nasiloynanirButton)
        view.addSubview(ayarlarButton)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        let label21Top = NSLayoutConstraint(item: a21Label, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 65.0)
        let label21Center = NSLayoutConstraint(item: a21Label, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let baslatButtonTop = NSLayoutConstraint(item: baslatButton, attribute: .top, relatedBy: .equal, toItem: self.a21Label, attribute: .top, multiplier: 1.0, constant: 150)
        let baslatButtonCenter = NSLayoutConstraint(item: baslatButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let baslatButtonHeight = NSLayoutConstraint(item: baslatButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 75)
        let baslatButtonWidth = NSLayoutConstraint(item: baslatButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 300)
        
        let nasilOynanirButtonTop = NSLayoutConstraint(item: nasiloynanirButton, attribute: .top, relatedBy: .equal, toItem: self.baslatButton, attribute: .top, multiplier: 1.0, constant: 85)
        let nasilOynanirButtonCenter = NSLayoutConstraint(item: nasiloynanirButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let nasilOynanirButtonHeight = NSLayoutConstraint(item: nasiloynanirButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 75)
        let nasilOynanirButtonWidth = NSLayoutConstraint(item: nasiloynanirButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 300)
        
        let ayarlarButtonTop = NSLayoutConstraint(item: ayarlarButton, attribute: .top, relatedBy: .equal, toItem: self.nasiloynanirButton, attribute: .top, multiplier: 1.0, constant: 85)
        let ayarlarButtonCenter = NSLayoutConstraint(item: ayarlarButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let ayarlarButtonHeight = NSLayoutConstraint(item: ayarlarButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 75)
        let ayarlarButtonWidth = NSLayoutConstraint(item: ayarlarButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 300)
        
        //MARK: Nesnelerin constraint değerleri ekrana ekleniyor.
        NSLayoutConstraint.activate([label21Top,label21Center,baslatButtonTop,baslatButtonCenter,baslatButtonHeight,baslatButtonWidth,nasilOynanirButtonTop,nasilOynanirButtonCenter,nasilOynanirButtonHeight,nasilOynanirButtonWidth,ayarlarButtonTop,ayarlarButtonCenter,ayarlarButtonHeight,ayarlarButtonWidth])
    }
}































