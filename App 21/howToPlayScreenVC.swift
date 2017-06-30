//
//  howToPlayScreenVC.swift
//  App 21
//
//  Created by Abdullah on 28.06.2017.
//  Copyright © 2017 kodamanlabs. All rights reserved.
//

import UIKit

class howToPlayScreenVC: UIViewController {

    override func viewDidLoad() {
        //MARK: Arka plan rengi belirlendi.
        view.backgroundColor = UIColor.white
        
        super.viewDidLoad()

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
    
    //MARK: geriButton oluşturuldu.
    let geriButton : UIButton = {
        let button = UIButton()
        button.setTitle("Geri", for: .normal)
        button.addTarget(self, action: #selector(backButton), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 36)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: tanitimImage nesnesi oluşturuldu.
    let tanitimImage: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "nasil_oynanir")
        image.layer.borderWidth = 1
        image.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    //MARK: backButton fonksiyonu. Ayarlar ekranına dönmeyi sağlıyor.
    func backButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: false)
    }
    
    //MARK: Nesneler ekrana ekleniyor ve constraint değeri belirleniyor.
    func setupViews(){
        //MARK: Nesneler ekrana ekleniyor.
        view.addSubview(geriButton)
        view.addSubview(tanitimImage)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        let geriButtonTop = NSLayoutConstraint(item: geriButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 5)
        let geriButtonLeading = NSLayoutConstraint(item: geriButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 30)
        
        let tanitimImageTop = NSLayoutConstraint(item: tanitimImage, attribute: .top, relatedBy: .equal, toItem: self.geriButton, attribute: .top, multiplier: 1.0, constant: 50)
        let tanitimImageCenter = NSLayoutConstraint(item: tanitimImage, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let tanitimImageHeight = NSLayoutConstraint(item: tanitimImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 500)
        let tanitimImageWidth = NSLayoutConstraint(item: tanitimImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 300)

        //MARK: Nesnelerin constraint değerleri ekrana ekleniyor.
        NSLayoutConstraint.activate([geriButtonTop,geriButtonLeading,tanitimImageTop,tanitimImageCenter,tanitimImageHeight,tanitimImageWidth])
    }
    
}
