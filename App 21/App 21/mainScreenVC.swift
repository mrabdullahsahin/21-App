//
//  mainScreenVC.swift
//  App 21
//
//  Created by Abdullah on 16.06.2017.
//  Copyright © 2017 kodamanlabs. All rights reserved.
//

import UIKit

class mainScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //arkaplan nesne belirlendi ve resim atandı.
        let backgroundImage = #imageLiteral(resourceName: "background")
        //view nesnemiz için arka plan görseli olarak background nesnesi atandı.
        self.view.backgroundColor = UIColor(patternImage: backgroundImage)
        
        
    }
}
