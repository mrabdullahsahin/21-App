//
//  gameScreenVC.swift
//  Number 21
//
//  Created by Abdullah on 26.08.2017.
//  Copyright © 2017 abdullah. All rights reserved.
//

import UIKit
import PureLayout // auto-layout işlemi için gerekli kütüphane.

class gameScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameStoppedGizle()
        gameScreenGoster()
        gameFinishedGizle()
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
    
    //----------------------------------------------- gameScreen Nesneleri -------------------------------------------------
    
    // MARK: Durum yazan label nesnesi oluşturuldu.
    let durumLabel: UILabel = {
        let label = UILabel.newAutoLayout()
        label.text = "Oyuncu 3 adet sayı seçti."
        label.numberOfLines = 3
        label.textColor = UIColor.darkBlueColor()
        label.font = UIFont.allFontType(withSize: 25)
        label.textAlignment = .center
        return label
    }()
    
    // MARK: - sayilarin bulunduğu arka plan nesnesi.
    let sayiArkaPlanView: UIView = {
        let view = UIView.newAutoLayout()
        view.backgroundColor = UIColor.darkBlueColor()
        return view
    }()
    
    // MARK: - number1 nesnesi oluşturuluyor.
    let number1: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("1", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number2 nesnesi oluşturuluyor.
    let number2: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("2", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number3 nesnesi oluşturuluyor.
    let number3: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("3", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number4 nesnesi oluşturuluyor.
    let number4: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("4", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number5 nesnesi oluşturuluyor.
    let number5: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("5", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number6 nesnesi oluşturuluyor.
    let number6: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("6", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number7 nesnesi oluşturuluyor.
    let number7: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("7", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number8 nesnesi oluşturuluyor.
    let number8: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("8", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number9 nesnesi oluşturuluyor.
    let number9: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("9", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number10 nesnesi oluşturuluyor.
    let number10: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("10", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number11 nesnesi oluşturuluyor.
    let number11: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("11", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number12 nesnesi oluşturuluyor.
    let number12: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("12", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number13 nesnesi oluşturuluyor.
    let number13: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("13", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number14 nesnesi oluşturuluyor.
    let number14: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("14", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number15 nesnesi oluşturuluyor.
    let number15: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("15", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number16 nesnesi oluşturuluyor.
    let number16: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("16", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number17 nesnesi oluşturuluyor.
    let number17: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("17", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number18 nesnesi oluşturuluyor.
    let number18: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("18", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number19 nesnesi oluşturuluyor.
    let number19: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("19", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number20 nesnesi oluşturuluyor.
    let number20: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("20", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - number21 nesnesi oluşturuluyor.
    let number21: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("21", for: UIControlState.normal)
        button.numberDesign()
        return button
    }()
    
    // MARK: - secilecek1Button nesnesi oluşturuluyor.
    let secilecek1Button: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("1", for: UIControlState.normal)
        button.secilecekButtonDesign()
        //button.addTarget(self, action: #selector(goSecilecek1Button), for: .touchUpInside)
        return button
    }()
    
    // MARK: - secilecek2Button nesnesi oluşturuluyor.
    let secilecek2Button: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("2", for: UIControlState.normal)
        button.secilecekButtonDesign()
        //button.addTarget(self, action: #selector(goSecilecek2Button), for: .touchUpInside)
        return button
    }()
    
    // MARK: - secilecek3Button nesnesi oluşturuluyor.
    let secilecek3Button: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("3", for: UIControlState.normal)
        button.secilecekButtonDesign()
        //button.addTarget(self, action: #selector(goSecilecek3Button), for: .touchUpInside)
        return button
    }()
    
    //MARK: mainButton nesnesi oluşturuldu.
    let mainButton: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setImage(#imageLiteral(resourceName: "ana_sayfa"), for: .normal)
        button.addTarget(self, action: #selector(goMainButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: stoppedButton nesnesi oluşturuldu
    let stoppedButton: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setImage(#imageLiteral(resourceName: "oyunu_durdur"), for: .normal)
        button.addTarget(self, action: #selector(gostoppedButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: oynaButton nesnesi oluşturuldu.
    let oynaButton: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("Oyna", for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 20)
        button.gameButtonDesign()
        button.addTarget(self, action: #selector(goOynaButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: pasGecButton nesnesi oluşturuldu.
    let pasGecButton: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setTitle("Pas Geç", for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 20)
        button.gameButtonDesign()
        button.addTarget(self, action: #selector(goPasGecButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: goMainButton fonksiyonu.
    func goMainButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
    }
    
    //MARK: gostoppedButton fonksiyonu.
    func gostoppedButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
        gameScreenGizle()
    }
    
    //MARK: goOynaButton fonksiyonu.
    func goOynaButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
    }
    
    //MARK: goPasGecButton fonksiyonu.
    func goPasGecButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
    }
    
    // MARK: - gameScreen nesneleri gizleniyor.
    func gameScreenGizle(){
        durumLabel.isHidden = true
        sayiArkaPlanView.isHidden = true
        secilecek1Button.isHidden = true
        secilecek2Button.isHidden = true
        secilecek3Button.isHidden = true
        mainButton.isHidden = false
        stoppedButton.isHidden = true
        oynaButton.isHidden = true
        pasGecButton.isHidden = true
    }
    
    // MARK: - gameScreen nesneleri gösteriliyor.
    func gameScreenGoster(){
        durumLabel.isHidden = false
        sayiArkaPlanView.isHidden = false
        secilecek1Button.isHidden = false
        secilecek2Button.isHidden = false
        secilecek3Button.isHidden = false
        mainButton.isHidden = false
        stoppedButton.isHidden = false
        oynaButton.isHidden = false
        pasGecButton.isHidden = false
    }
    
    //----------------------------------------------------- gameStopped Nesneleri --------------------------------------------
    
    //MARK: 21 yazacak label nesnesi oluşturuldu.
    let number21Label: UILabel = {
        let label = UILabel.newAutoLayout()
        label.text = "21"
        label.numberOfLines = 1
        label.textColor = UIColor.darkBlueColor()
        label.textAlignment = .center
        label.font = UIFont.allFontType(withSize: 100)
        return label
    }()
    
    //MARK: Says label nesnesi oluşturuldu.
    let saysLabel: UILabel = {
        let label = UILabel.newAutoLayout()
        label.text = "Fatih diyor ki: 'Fatih'in İstanbul'u fethettiği yaştasın beni yenebilirsin!'"
        label.textColor = UIColor.darkBlueColor()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.lineBreakMode = NSLineBreakMode.byClipping
        label.font = UIFont.allFontType(withSize: 25)
        return label
    }()
    
    // MARK: - oyunaDevamEt nesnesi oluşturuldu.
    let oyunaDevamEt: UIButton = {
        let button = UIButton.newAutoLayout()
        button.setImage(#imageLiteral(resourceName: "oyuna_devam_et"), for: .normal)
        button.addTarget(self, action: #selector(goGameButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: goGameButton fonksiyonu.
    func goGameButton(sender: UIButton!){
        self.navigationController?.pushViewController(gameScreenVC(), animated: true)
    }
    
    // MARK: - gameStopped nesneleri gizleniyor.
    func gameStoppedGizle(){
        number21Label.isHidden = true
        saysLabel.isHidden = true
        oyunaDevamEt.isHidden = true
    }
    
    // MARK: - gameStopped nesneleri gösteriliyor.
    func gameStoppedGoster(){
        number21Label.isHidden = false
        saysLabel.isHidden = false
        oyunaDevamEt.isHidden = false
    }
    
    //------------------------------------------------ gameFinished Nesneleri ------------------------------------------------
    
    //MARK: Kazanan kişinin yazıldığı nesne.
    let winLabel: UILabel = {
        let label = UILabel.newAutoLayout()
        label.text = "Fatih Kazandı"
        label.numberOfLines = 0
        label.textColor = UIColor.darkBlueColor()
        label.font = UIFont.allFontType(withSize: 36)
        label.textAlignment = .center
        label.lineBreakMode = NSLineBreakMode.byClipping
        return label
    }()
    
    //MARK: Oyun bittiğinde kazanan ya da kaybedenin durumuna göre ekrana yazılacak cümlelerin yazıldığı nesne.
    let senteceLabel: UILabel = {
        let label = UILabel.newAutoLayout()
        label.text = "'Belki bir daha ki sefere Fatih'i yenebilirsin.'"
        label.lineBreakMode = NSLineBreakMode.byClipping
        label.numberOfLines = 0
        label.textColor = UIColor.darkBlueColor()
        label.font = UIFont.allFontType(withSize: 18)
        label.textAlignment = .center
        return label
    }()
    
    //MARK: againButton nesnesi oluşturuldu
    let againButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "againButton_bg"), for: .normal)
        button.addTarget(self, action: #selector(goAgainButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: goAgainButton fonksiyonu.
    func goAgainButton(sender: UIButton!){
        self.navigationController?.pushViewController(gameScreenVC(), animated: true)
        gameScreenGoster()
    }
    
    // MARK: - gameFinished nesnelerini gizliyor.
    func gameFinishedGizle(){
        winLabel.isHidden = true
        senteceLabel.isHidden = true
        againButton.isHidden = true
    }
    
    // MARK: - gameFinished nesneleri gösteriliyor.
    func gameFinishedGoster(){
        winLabel.isHidden = false
        senteceLabel.isHidden = false
        againButton.isHidden = false
    }
    
    var didSetupConstraints = false
    
    // MARK: - nesneler ekrana yerleştiriliyor.
    override func loadView() {
        view = UIView()
        view.backgroundColor = UIColor.white
        
        view.addSubview(durumLabel)
        view.addSubview(sayiArkaPlanView)
        sayiArkaPlanView.addSubview(number1)
        sayiArkaPlanView.addSubview(number2)
        sayiArkaPlanView.addSubview(number3)
        sayiArkaPlanView.addSubview(number4)
        sayiArkaPlanView.addSubview(number5)
        sayiArkaPlanView.addSubview(number6)
        sayiArkaPlanView.addSubview(number7)
        sayiArkaPlanView.addSubview(number8)
        sayiArkaPlanView.addSubview(number9)
        sayiArkaPlanView.addSubview(number10)
        sayiArkaPlanView.addSubview(number11)
        sayiArkaPlanView.addSubview(number12)
        sayiArkaPlanView.addSubview(number13)
        sayiArkaPlanView.addSubview(number14)
        sayiArkaPlanView.addSubview(number15)
        sayiArkaPlanView.addSubview(number16)
        sayiArkaPlanView.addSubview(number17)
        sayiArkaPlanView.addSubview(number18)
        sayiArkaPlanView.addSubview(number19)
        sayiArkaPlanView.addSubview(number20)
        sayiArkaPlanView.addSubview(number21)
        view.addSubview(secilecek1Button)
        view.addSubview(secilecek2Button)
        view.addSubview(secilecek3Button)
        view.addSubview(mainButton)
        view.addSubview(stoppedButton)
        view.addSubview(oynaButton)
        view.addSubview(pasGecButton)
        view.addSubview(number21Label)
        view.addSubview(saysLabel)
        view.addSubview(oyunaDevamEt)
        view.addSubview(winLabel)
        view.addSubview(senteceLabel)
        view.addSubview(againButton)
        
        view.setNeedsUpdateConstraints()
    }
    
    // MARK: - nesnelerin auto-layout işlemi gerçekleştiriliyor.
    override func updateViewConstraints() {
        
        let screenSize: CGRect = UIScreen.main.bounds // ekran boyutlarını almak için kullanıyorum.
        let screenWidth = screenSize.width // ekran genişliğini alıyorum.
        
        if (!didSetupConstraints){
            
            let views1: NSArray = [number1,number2,number3,number4,number5,number6,number7]
            let views2: NSArray = [number8,number9,number10,number11,number12,number13,number14]
            let views3: NSArray = [number15,number16,number17,number18,number19,number20,number21]
            let buttons: NSArray = [secilecek1Button,secilecek2Button,secilecek3Button]
            
            // MARK: - durumLabel auto-layout işlemi gerçekleştiriliyor.
            durumLabel.autoPin(toTopLayoutGuideOf: self, withInset: 50.0)
            durumLabel.autoAlignAxis(toSuperviewAxis: .vertical)
            
            // MARK: - sayiArkaPlanView auto-layout işlemi gerçekleştiriliyor.
            sayiArkaPlanView.autoSetDimensions(to: CGSize(width: screenWidth, height: 150))
            sayiArkaPlanView.autoAlignAxis(toSuperviewAxis: .vertical)
            sayiArkaPlanView.autoPinEdge(.top, to: .bottom, of: durumLabel, withOffset: 40)
            
            // MARK: - number elemanları için auto-layout işlemi gerçekleştiriliyor.
            number1.autoPinEdge(toSuperviewEdge: .top, withInset: 10.0)
            number8.autoPinEdge(.top, to: .bottom, of: number1, withOffset: 5)
            number15.autoPinEdge(.top, to: .bottom, of: number8, withOffset: 5)
            views1.autoSetViewsDimensions(to: CGSize(width: 40, height: 40))
            views1.autoDistributeViews(along: .horizontal, alignedTo: .horizontal, withFixedSpacing: 5.0, insetSpacing: true, matchedSizes: false)
            views2.autoSetViewsDimensions(to: CGSize(width: 40, height: 40))
            views2.autoDistributeViews(along: .horizontal, alignedTo: .horizontal, withFixedSpacing: 5.0, insetSpacing: true, matchedSizes: false)
            views3.autoSetViewsDimensions(to: CGSize(width: 40, height: 40))
            views3.autoDistributeViews(along: .horizontal, alignedTo: .horizontal, withFixedSpacing: 5.0, insetSpacing: true, matchedSizes: false)
            
            // MARK: - secilecekButtonlar için auto-layout işlemi gerçekleştiriliyor.
            secilecek1Button.autoPinEdge(.top, to: .bottom, of: sayiArkaPlanView, withOffset: 70)
            buttons.autoSetViewsDimensions(to: CGSize(width: 60, height: 60))
            buttons.autoDistributeViews(along: .horizontal, alignedTo: .horizontal, withFixedSpacing: 10, insetSpacing: true, matchedSizes: false)
            
            // MARK: - mainButton için auto-layout işlemi gerçekleştiriliyor.
            mainButton.autoPin(toBottomLayoutGuideOf: self, withInset: 40.0)
            mainButton.autoPinEdge(toSuperviewEdge: .leading, withInset: 25.0)
            
            // MARK: - stoppedButton için auto-layout işlemi gerçekleştiriliyor.
            stoppedButton.autoPin(toBottomLayoutGuideOf: self, withInset: 40.0)
            stoppedButton.autoPinEdge(toSuperviewEdge: .trailing, withInset: 25.0)
            
            // MARK: - oynaButton için auto-layout işlemi gerçekleştiriliyor.
            oynaButton.autoPin(toBottomLayoutGuideOf: self, withInset: 40.0)
            oynaButton.autoPinEdge(.left, to: .right, of: mainButton, withOffset: 10.0)
            oynaButton.autoSetDimension(.width, toSize: 65.0)
            
            // MARK: - pasGecButton için auto-layout işlemi gerçekleştiriliyor.
            pasGecButton.autoPin(toBottomLayoutGuideOf: self, withInset: 40.0)
            pasGecButton.autoPinEdge(.right, to: .left, of: stoppedButton, withOffset: -10.0)
            pasGecButton.autoSetDimension(.width, toSize: 80.0)
            
            //---------------------------------------------- gameStopped Nesneleri ---------------------------------------------
            // MARK: - number21Label için auto-layout işlmei gerçekleştiriliyor.
            number21Label.autoPin(toTopLayoutGuideOf: self, withInset: 90)
            number21Label.autoAlignAxis(toSuperviewAxis: .vertical)
            
            // MARK: - saysLabel için auto-layout işlemi gerçekleştiriliyor.
            saysLabel.autoPinEdge(.top, to: .bottom, of: number21Label, withOffset: 70)
            saysLabel.autoAlignAxis(toSuperviewAxis: .vertical)
            saysLabel.autoPinEdge(toSuperviewEdge: .leading, withInset: 40)
            
            // MARK: - oyunaDevamEt için auto-layout işlemi gerçekleştiriliyor.
            oyunaDevamEt.autoPin(toBottomLayoutGuideOf: self, withInset: 40.0)
            oyunaDevamEt.autoPinEdge(toSuperviewEdge: .trailing, withInset: 25.0)
            
            //---------------------------------------------- gameFinished Nesneleri ------------------------------------------
            // MARK: - winLabel için auto-layout işlemi gerçekleştiriliyor.
            winLabel.autoPin(toTopLayoutGuideOf: self, withInset: 90)
            winLabel.autoAlignAxis(toSuperviewAxis: .vertical)
            
            // MARK: - senteceLabel için auto-layout işlemi gerçekleştiriliyor.
            senteceLabel.autoAlignAxis(toSuperviewAxis: .vertical)
            senteceLabel.autoPinEdge(toSuperviewEdge: .leading, withInset: 40)
            senteceLabel.autoPinEdge(.top, to: .bottom, of: winLabel, withOffset: 70)
            
            // MARK: - againButton için auto-layout işlemi gerçekleştiriliyor.
            againButton.autoPin(toBottomLayoutGuideOf: self, withInset: 40.0)
            againButton.autoPinEdge(toSuperviewEdge: .trailing, withInset: 25.0)
            
            didSetupConstraints = true
        }
        
        super.updateViewConstraints()
    }

}
