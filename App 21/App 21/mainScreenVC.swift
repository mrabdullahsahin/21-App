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
        label.textColor = UIColor.black
        label.font = UIFont(name: "Avenir-Book", size: 100)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: baslatButton nesnesi oluşturuldu.
    let baslatButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "button_Bg"), for: .normal)
        //button.setTitle("Başlat", for: .application)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: nasiloynanirButton nesnesi oluşturuldu.
    let nasiloynanirButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "button_Bg"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: ayarlarButton nesnesi oluşturuldu.
    let ayarlarButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "button_Bg"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setupViews(){
        //MARK: Nesneler ekranan ekleniyor.
        view.addSubview(a21Label)
        view.addSubview(baslatButton)
        view.addSubview(nasiloynanirButton)
        view.addSubview(ayarlarButton)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[a21Label]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["a21Label" : a21Label]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[baslatButton]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["baslatButton" : baslatButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[nasilButton]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["nasilButton" : nasiloynanirButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[ayarButton]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["ayarButton" : ayarlarButton]))
        
        //MARK: Nesnelerin birbirine olan constraint değerleri belirleniyor.
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[a21Label]-35-[baslatButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["a21Label" : a21Label, "baslatButton" : baslatButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[baslatButton]-10-[nasilButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["baslatButton" : baslatButton, "nasilButton" : nasiloynanirButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[nasilButton]-10-[ayarButton]", options: NSLayoutFormatOptions(), metrics: nil, views: ["nasilButton" : nasiloynanirButton, "ayarButton" : ayarlarButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[topLayoutGuide]-60-[a21Label]", options: NSLayoutFormatOptions(), metrics: nil, views: ["topLayoutGuide" : topLayoutGuide, "a21Label" : a21Label]))
    }
}































