//
//  howToPlayScreenVC.swift
//  Number 21
//
//  Created by Abdullah on 26.08.2017.
//  Copyright © 2017 abdullah. All rights reserved.
//

import UIKit
import PureLayout // auto-layout işlemi için gerekli kütüphane.

class howToPlayScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    //MARK: geriButton oluşturuldu.
    let geriButton : UIButton = {
        let button = UIButton.newAutoLayout()
        button.otherDesign()
        button.setTitle("Geri", for: .normal)
        button.addTarget(self, action: #selector(backButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: tanitimImage nesnesi oluşturuldu.
    let tanitimImage: UIImageView = {
        var image = UIImageView.newAutoLayout()
        image.image = UIImage(named: "nasil_oynanir")
        image.layer.borderWidth = 1
        image.layer.borderColor = UIColor.darkBlueColor().cgColor
        return image
    }()
    
    var didSetupConstraints = false
    
    //MARK: backButton fonksiyonu.
    func backButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
    }
    
    // MARK: - nesneler ekrana yerleştiriliyor.
    override func loadView() {
        view = UIView()
        view.backgroundColor = UIColor.white
        
        view.addSubview(geriButton)
        view.addSubview(tanitimImage)
        
        view.setNeedsUpdateConstraints()
    }
    
    // MARK: - nesnelerin auto-layout işlemi gerçekleştiriliyor.
    override func updateViewConstraints() {
        
        if (!didSetupConstraints){
            
            // MARK: - geriButton auto-layout işlemi gerçekleştiriliyor.
            geriButton.autoPin(toTopLayoutGuideOf: self, withInset: 10.0)
            geriButton.autoPinEdge(toSuperviewEdge: .leading, withInset: 30.0)
            
            // MARK: - tanitimImage auto-layout işlemi gerçekleştiriliyor.
            tanitimImage.autoSetDimensions(to: CGSize(width: 300, height: 475))
            tanitimImage.autoPinEdge(.top, to: .bottom, of: geriButton, withOffset: 10.0)
            tanitimImage.autoPinEdge(toSuperviewEdge: .leading, withInset: 10.0)
            tanitimImage.autoPinEdge(toSuperviewEdge: .trailing, withInset: 10.0)
            
            didSetupConstraints = true
        }
        
        super.updateViewConstraints()
    }

}
