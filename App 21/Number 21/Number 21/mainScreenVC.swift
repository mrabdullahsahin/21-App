//
//  ViewController.swift
//  Number 21
//
//  Created by Abdullah on 26.08.2017.
//  Copyright © 2017 abdullah. All rights reserved.
//

import UIKit
import PureLayout // auto-layout işlemi için gerekli kütüphane.

class mainScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    let label21: UILabel = {
        let label = UILabel.newAutoLayout()
        label.text = "21"
        label.numberOfLines = 1
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        label.font = UIFont.allFontType(withSize: 100)
        label.textAlignment = .center
        return label
    }()
    
    //MARK: baslatButton nesnesi oluşturuldu.
    let baslatButton: UIButton = {
        let button = UIButton.newAutoLayout()
        button.allDesign()
        button.setTitle("Başlat", for: UIControlState.normal)
        button.addTarget(self, action: #selector(startButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: nasiloynanirButton nesnesi oluşturuldu.
    let nasiloynanirButton: UIButton = {
        let button = UIButton.newAutoLayout()
        button.allDesign()
        button.setTitle("Nasıl Oynanır", for: UIControlState.normal)
        button.addTarget(self, action: #selector(howToPlayButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: ayarlarButton nesnesi oluşturuldu.
    let ayarlarButton: UIButton = {
        let button = UIButton.newAutoLayout()
        button.allDesign()
        button.setTitle("Ayarlar", for: UIControlState.normal)
        button.addTarget(self, action: #selector(settingsButton), for: .touchUpInside)
        return button
    }()
    
    var didSetupConstraints = false
    
    //MARK: startButton fonksiyonu.
    func startButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
    }
    
    //MARK: howToPlayButton fonksiyonu.
    func howToPlayButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
    }
    
    //MARK: settingsButton fonksiyonu.
    func settingsButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
    }
    
    // MARK: - nesneler ekrana yerleştiriliyor.
    override func loadView() {
        view = UIView()
        view.backgroundColor = UIColor.white
        
        view.addSubview(label21)
        view.addSubview(baslatButton)
        view.addSubview(nasiloynanirButton)
        view.addSubview(ayarlarButton)
        
        view.setNeedsUpdateConstraints()
    }
    
    // MARK: - nesnelerin auto-layout işlemi gerçekleştiriliyor.
    override func updateViewConstraints() {
        
        if (!didSetupConstraints){
            //MARK: - label21 auto-layout işlemi gerçekleştiriliyor.
            label21.autoPin(toTopLayoutGuideOf: self, withInset: 60.0)
            label21.autoPinEdge(toSuperviewEdge: .trailing, withInset: 50.0)
            label21.autoPinEdge(toSuperviewEdge: .leading, withInset: 50.0)
            
            // MARK: - baslatButton auto-layout işlemi gerçekleştiriliyor.
            baslatButton.autoPinEdge(.top, to: .bottom, of: label21, withOffset: 35.0)
            baslatButton.autoPinEdge(toSuperviewEdge: .trailing, withInset: 29.0)
            baslatButton.autoPinEdge(toSuperviewEdge: .leading, withInset: 29.0)
            
            // MARK: - nasilOynanirButton auto-layout işlemi gerçekleştiriliyor.
            nasiloynanirButton.autoPinEdge(.top, to: .bottom, of: baslatButton, withOffset: 10.0)
            nasiloynanirButton.autoPinEdge(toSuperviewEdge: .trailing, withInset: 29.0)
            nasiloynanirButton.autoPinEdge(toSuperviewEdge: .leading, withInset: 29.0)
            
            // MARK: - ayarlarButton auto-layout işlemi gerçekleştiriliyor.
            ayarlarButton.autoPinEdge(.top, to: .bottom, of: nasiloynanirButton, withOffset: 10.0)
            ayarlarButton.autoPinEdge(toSuperviewEdge: .trailing, withInset: 29.0)
            ayarlarButton.autoPinEdge(toSuperviewEdge: .leading, withInset: 29.0)
            
            didSetupConstraints = true
        }
        
        super.updateViewConstraints()
    }
}
