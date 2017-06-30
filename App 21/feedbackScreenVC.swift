//
//  feedbackScreenVC.swift
//  App 21
//
//  Created by Abdullah on 28.06.2017.
//  Copyright © 2017 kodamanlabs. All rights reserved.
//

import UIKit

class feedbackScreenVC: UIViewController {

    override func viewDidLoad() {
        
        //MARK: Arka plan rengi belirlendi.
        view.backgroundColor = UIColor.white
        
        super.viewDidLoad()
        
        setupViews()
        
        //Klavyenin ekranda gösterilmesini sağlayan fonksiyon.
        istekText.becomeFirstResponder()
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
    
    //MARK: geriButton oluşturuldu.
    let geriButton : UIButton = {
        let button = UIButton()
        button.setTitle("Geri", for: .normal)
        button.addTarget(self, action: #selector(backButton), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 36)
        //button.backgroundColor = UIColor.white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: gonderButton oluşturuldu.
    let gonderButton : UIButton = {
       let button = UIButton()
        button.setTitle("Gönder", for: .normal)
        button.addTarget(self, action: #selector(submitButton), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 36)
        button.backgroundColor = UIColor.white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: istekText oluşturuldu.
    let istekText : UITextView = {
        let text = UITextView()
        text.isScrollEnabled = true
        text.font = UIFont(name: "Avenir-Book", size: 15)
        text.keyboardType = UIKeyboardType.default
        text.returnKeyType = UIReturnKeyType.default
        text.isScrollEnabled = true
        text.textAlignment = .left
        text.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
        text.layer.borderWidth = 1
        text.layer.cornerRadius = 5
        text.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    //MARK: backButton fonksiyonu. Ayarlar ekranına dönmeyi sağlıyor.
    func backButton(sender: UIButton!){
        self.navigationController?.pushViewController(settingsScreenVC(), animated: false)
    }
    
    //MARK: submitButton fonksiyonu. Geri bildirimlerin gönderilmesini sağlıyor.
    func submitButton(sender: UIButton!){
        self.navigationController?.pushViewController(settingsScreenVC(), animated: false)
    }
    
    //MARK: Nesneler ekrana ekleniyor ve constraint değeri belirleniyor.
    func setupViews(){
        //MARK: Nesneler ekrana ekleniyor.
        view.addSubview(geriButton)
        view.addSubview(gonderButton)
        view.addSubview(istekText)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        let geriButtonTop = NSLayoutConstraint(item: geriButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 19)
        let geriButtonLeading = NSLayoutConstraint(item: geriButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 30)
        
        let gonderButtonTop = NSLayoutConstraint(item: gonderButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 19)
        let gonderButtonTrailing = NSLayoutConstraint(item: gonderButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -30)
        
        let istekTextTop = NSLayoutConstraint(item: istekText, attribute: .top, relatedBy: .equal, toItem: self.geriButton, attribute: .top, multiplier: 1.0, constant: 75)
        let istekTextCenter = NSLayoutConstraint(item: istekText, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let istekTextHeight = NSLayoutConstraint(item: istekText, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 300)
        let istekTextWidth = NSLayoutConstraint(item: istekText, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 300)
        
        //MARK: Nesnelerin constraint değerleri ekrana ekleniyor.
        NSLayoutConstraint.activate([geriButtonTop,geriButtonLeading,gonderButtonTop,gonderButtonTrailing,istekTextWidth,istekTextHeight,istekTextCenter,istekTextTop])
    }
    
    
}
