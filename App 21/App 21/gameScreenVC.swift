//
//  gameScreenVC.swift
//  App 21
//
//  Created by Abdullah on 28.06.2017.
//  Copyright © 2017 kodamanlabs. All rights reserved.
//

import UIKit

//MARK: Fatih'in söyleyeceği cümleler.
let saysSentece = ["Korktun Heralde", "Seni bulacağım kaçma, seni bulacağım"]

//MARK: Kazanan kişinin tutulduğu nesne.
public var winnerLabel: String = "Fatih Kazandı!"

//Fatih kazandığında yazılaacak olan cümleler.
let winnerSentece = ["Fatih'in İstanbul'u fethettiği yaştayım beni yenebileceğini mi zannetin.","Ses, nefes ve enfes"]

//Fatih yenildiği zaman yazılacak olan cümeler.
let losserSentece = ["Beni ilk yenen kişi sensin.","Yenilen pehlivan güreşe doymazmış gel bir daha kapışalım."]

public var secili1 : Bool = false, secili2 : Bool = false, secili3 : Bool = false


class gameScreenVC: UIViewController {

    override func viewDidLoad() {
        
        //Arka Plan rengi belirlendi.
        view.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 254/255, alpha: 100)
        
        super.viewDidLoad()
        
        setupViews()
        
        fatihLabel.isHidden = true
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
    
    // --------------------------------------------------------------------- gameScreen Nesneleri Başlangıç ------------------------------------------------ //
    //MARK: Durum yazan label nesnesi oluşturuldu.
    let durumLabel: UILabel = {
        let label = UILabel()
        label.text = "Oyuncu 3 adet sayı seçti."
        label.numberOfLines = 3
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        label.font = UIFont(name: "Avenir-Book", size: 25)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sayiArkaPlanView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let number1: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("1", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number2: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("2", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number3: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("3", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number4: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("4", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number5: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("5", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number6: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("6", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number7: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("7", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number8: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("8", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let number9: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("9", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number10: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("10", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number11: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("11", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number12: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("12", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number13: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("13", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number14: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("14", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number15: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("15", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number16: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("16", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number17: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("17", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number18: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("18", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number19: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("19", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number20: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("20", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let number21: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.setTitle("21", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let secilecek1Button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 30
        button.setTitle("\(secilecekSayilar[0])", for: UIControlState.normal)
        button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.addTarget(self, action: #selector(goSecilecek1Button), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let secilecek2Button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 30
        button.setTitle("\(secilecekSayilar[1])", for: UIControlState.normal)
        button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.addTarget(self, action: #selector(goSecilecek2Button), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let secilecek3Button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 30
        button.setTitle("\(secilecekSayilar[2])", for: UIControlState.normal)
        button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 25)
        button.addTarget(self, action: #selector(goSecilecek3Button), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: fatihLabel nesnesi oluşturuldu.
    let fatihLabel: UILabel = {
        let label = UILabel()
        label.text = "Fatih Oynuyor..."
        label.numberOfLines = 1
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        label.font = UIFont(name: "Avenir-Book", size: 30)
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
    
    //MARK: stoppedButton nesnesi oluşturuldu
    let stoppedButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "🔸oyunu_durdur"), for: .normal)
        button.addTarget(self, action: #selector(gostoppedButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: oynaButton nesnesi oluşturuldu.
    let oynaButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
        button.setTitle("Oyna", for: UIControlState.normal)
        button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 20)
        button.addTarget(self, action: #selector(goOynaButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: pasGecButton nesnesi oluşturuldu.
    let pasGecButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
        button.setTitle("Pas Geç", for: UIControlState.normal)
        button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Book", size: 20)
        button.addTarget(self, action: #selector(goPasGecButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //gameScreen nesneleri gizleniyor.
    func gameScreenGizle(){
        durumLabel.isHidden = true
        sayiArkaPlanView.isHidden = true
        number1.isHidden = true
        number2.isHidden = true
        number3.isHidden = true
        number4.isHidden = true
        number5.isHidden = true
        number6.isHidden = true
        number7.isHidden = true
        number8.isHidden = true
        number9.isHidden = true
        number10.isHidden = true
        number11.isHidden = true
        number12.isHidden = true
        number13.isHidden = true
        number14.isHidden = true
        number15.isHidden = true
        number16.isHidden = true
        number17.isHidden = true
        number18.isHidden = true
        number19.isHidden = true
        number20.isHidden = true
        number21.isHidden = true
        oynaButton.isHidden = true
        pasGecButton.isHidden = true
        fatihLabel.isHidden = true
        secilecek1Button.isHidden = true
        secilecek2Button.isHidden = true
        secilecek3Button.isHidden = true
    }
    
    //MARK: goAgainButton fonksiyonu. Oyunun tekrar başlamasını sağlıyor.
    func gostoppedButton(sender: UIButton!){
        
    }
    
    //MARK: goMainButton fonksiyonu. Ana ekrana gidiyor.
    func goMainButton(sender: UIButton!){
        self.navigationController?.pushViewController(mainScreenVC(), animated: true)
        kalanSayi = 20
        sayiAdet = 0
        siraNo = 0
        secilecekSayilar = [1,2,3]
        sayi1 = 1
        sayi2 = 2
        sayi3 = 3
    }
    
    //MARK: goOynaButton fonksiyonu. Kullanıcının hamle yapabilmesini sağlıyor.
    func goOynaButton(sender: UIButton!){
        kalanSayi = kalanSayi - sayiAdet
        butonRenklendir()
        secilecekVeSecilenSayilarDurumu()
        siraNo = 1
        
        if siraNo == 1{
            fatihOynuyor()
        }
    }
    
    //MARK: goPasGecButton fonksiyonu. Kullanıcının pas geçebilmesini sağlıyor.
    func goPasGecButton(sender: UIButton!){
        sayiAdet = 0
        kalanSayi = kalanSayi - sayiAdet
        siraDurumu()
        fatihOynuyor()
    }
    
    //Sıranın hangi kullanıcıda olduğunu belirleyen fonksiyon.
    func siraDurumu(){
        if siraNo == 0{
            siraNo = 1
        }
    }
    
    //Secilecek sayıların artırılıp azaltıldığı fonksiyon.
    func secilecekVeSecilenSayilarDurumu(){
        if sayiAdet == 3{
            secilecekSayilar[0] = secilecekSayilar[0] + 3
            secilecekSayilar[1] = secilecekSayilar[1] + 3
            secilecekSayilar[2] = secilecekSayilar[2] + 3
            
            sayi1 = sayi1 + 3
            sayi2 = sayi2 + 3
            sayi3 = sayi3 + 3
        }
        
        if sayiAdet == 2{
            secilecekSayilar[0] = secilecekSayilar[0] + 2
            secilecekSayilar[1] = secilecekSayilar[1] + 2
            secilecekSayilar[2] = secilecekSayilar[2] + 2
            
            sayi1 = sayi1 + 2
            sayi2 = sayi2 + 2
            sayi3 = sayi3 + 2
        }
        
        if sayiAdet == 1{
            secilecekSayilar[0] = secilecekSayilar[0] + 1
            secilecekSayilar[1] = secilecekSayilar[1] + 1
            secilecekSayilar[2] = secilecekSayilar[2] + 1
            
            sayi1 = sayi1 + 1
            sayi2 = sayi2 + 1
            sayi3 = sayi3 + 1
        }
        
        if sayiAdet == 0{
            secilecekSayilar[0] = secilecekSayilar[0] + 0
            secilecekSayilar[1] = secilecekSayilar[1] + 0
            secilecekSayilar[2] = secilecekSayilar[2] + 0
            
            sayi1 = sayi1 + 0
            sayi2 = sayi2 + 0
            sayi3 = sayi3 + 0
        }
        
        secilecekSayilarTitle()
    }
    
    //goSecilecek1Button fonksiyonu oluşturuldu.
    func goSecilecek1Button(sender: UIButton!){
        if secili1 == false{
            secilecek1Button.backgroundColor = UIColor.black
            secilecek1Button.layer.borderColor = UIColor.black.cgColor
            secilecek1Button.setTitleColor(UIColor.white, for: UIControlState.normal)
            sayiAdet = sayiAdet + 1
            secili1 = true
            if secili1 == true{
                secilecek2Button.isEnabled = true
                secilecek3Button.isEnabled = true
            }
        }else{
            secilecek1Button.backgroundColor = UIColor.white
            secilecek1Button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
            secilecek1Button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
            secili1 = false
            if secili1 == false{
                seciliDurum()
            }
        }
    }
    
    //Secilecek sayıların title ayarları düzenleniyor.
    func secilecekSayilarTitle(){
        secilecek1Button.setTitle("\(secilecekSayilar[0])", for: .normal)
        secilecek2Button.setTitle("\(secilecekSayilar[1])", for: .normal)
        secilecek3Button.setTitle("\(secilecekSayilar[2])", for: .normal)
    }
    
    //goSecilecek1Button fonksiyonu oluşturuldu.
    func goSecilecek2Button(sender: UIButton!){
        if secili2 == false && secili1 == true{
            secilecek2Button.backgroundColor = UIColor.black
            secilecek2Button.layer.borderColor = UIColor.black.cgColor
            secilecek2Button.setTitleColor(UIColor.white, for: UIControlState.normal)
            sayiAdet = sayiAdet + 1
            secili2 = true
        }else{
            secilecek2Button.backgroundColor = UIColor.white
            secilecek2Button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
            secilecek2Button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
            sayiAdet = sayiAdet - 1
            secili2 = false
        }
    }
    
    //goSecilecek1Button fonksiyonu oluşturuldu.
    func goSecilecek3Button(sender: UIButton!){
        if secili3 == false && secili2 == true && secili1 == true{
            secilecek3Button.backgroundColor = UIColor.black
            secilecek3Button.layer.borderColor = UIColor.black.cgColor
            secilecek3Button.setTitleColor(UIColor.white, for: UIControlState.normal)
            sayiAdet = sayiAdet + 1
            secili3 = true
        }else{
            secilecek3Button.backgroundColor = UIColor.white
            secilecek3Button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
            secilecek3Button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
            sayiAdet = sayiAdet + 1
            secili3 = false
        }
    }
    
    //Butonların secili durumları kontrol ediliyor.
    func seciliDurum(){
        if secili1 == false{
            secili2 = false
            secili3 = false
            
            secilecek2Button.backgroundColor = UIColor.white
            secilecek2Button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
            secilecek2Button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
            
            secilecek3Button.backgroundColor = UIColor.white
            secilecek3Button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
            secilecek3Button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
            
            secilecek2Button.isEnabled = false
            secilecek3Button.isEnabled = false
            
            if secili1 == false && sayiAdet == 3 {
                sayiAdet = sayiAdet - 3
            }
            if secili1 == false && sayiAdet == 2 {
                sayiAdet = sayiAdet - 2
            }
            if secili1 == false && sayiAdet == 1{
                sayiAdet = sayiAdet - 1
            }
        }
    }
    
    //Butonların secili olup olmama durumlarının sıfırlandığı fonksiyon.
    func seciliButonlariSifirlar(){
            secili1 = false
            secili2 = false
            secili3 = false
            
            secilecek2Button.backgroundColor = UIColor.white
            secilecek2Button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
            secilecek2Button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
            
            secilecek3Button.backgroundColor = UIColor.white
            secilecek3Button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
            secilecek3Button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
        
            secilecek1Button.backgroundColor = UIColor.white
            secilecek1Button.layer.borderColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0).cgColor
            secilecek1Button.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
    }
    
    //Bu fonksiyon oynayan oyuncunun durumuna göre yukarıda bulunan pasif butonları renklendiriyor.
    func butonRenklendir(){
        if siraNo == 0{
            if secili1 == true{
                if sayi1 == 1{
                    number1.backgroundColor = UIColor.black
                    number1.layer.borderColor = UIColor.black.cgColor
                    number1.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi1 == 4{
                    number4.backgroundColor = UIColor.black
                    number4.layer.borderColor = UIColor.black.cgColor
                    number4.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi1 == 7{
                    number7.backgroundColor = UIColor.black
                    number7.layer.borderColor = UIColor.black.cgColor
                    number7.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi1 == 10{
                    number10.backgroundColor = UIColor.black
                    number10.layer.borderColor = UIColor.black.cgColor
                    number10.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi1 == 13{
                    number13.backgroundColor = UIColor.black
                    number13.layer.borderColor = UIColor.black.cgColor
                    number13.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi1 == 16{
                    number16.backgroundColor = UIColor.black
                    number16.layer.borderColor = UIColor.black.cgColor
                    number16.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi1 == 19{
                    number19.backgroundColor = UIColor.black
                    number19.layer.borderColor = UIColor.black.cgColor
                    number19.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
            }
            
            if secili2 == true{
                if sayi2 == 2{
                    number2.backgroundColor = UIColor.black
                    number2.layer.borderColor = UIColor.black.cgColor
                    number2.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi2 == 5{
                    number5.backgroundColor = UIColor.black
                    number5.layer.borderColor = UIColor.black.cgColor
                    number5.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi2 == 8{
                    number8.backgroundColor = UIColor.black
                    number8.layer.borderColor = UIColor.black.cgColor
                    number8.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi2 == 11{
                    number11.backgroundColor = UIColor.black
                    number11.layer.borderColor = UIColor.black.cgColor
                    number11.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi2 == 14{
                    number14.backgroundColor = UIColor.black
                    number14.layer.borderColor = UIColor.black.cgColor
                    number14.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi2 == 17{
                    number17.backgroundColor = UIColor.black
                    number17.layer.borderColor = UIColor.black.cgColor
                    number17.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi2 == 20{
                    number20.backgroundColor = UIColor.black
                    number20.layer.borderColor = UIColor.black.cgColor
                    number20.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
            }
            
            if secili3 == true{
                if sayi3 == 3{
                    number3.backgroundColor = UIColor.black
                    number3.layer.borderColor = UIColor.black.cgColor
                    number3.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi3 == 6{
                    number6.backgroundColor = UIColor.black
                    number6.layer.borderColor = UIColor.black.cgColor
                    number6.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi3 == 9{
                    number9.backgroundColor = UIColor.black
                    number9.layer.borderColor = UIColor.black.cgColor
                    number9.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi3 == 12{
                    number12.backgroundColor = UIColor.black
                    number12.layer.borderColor = UIColor.black.cgColor
                    number12.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi3 == 15{
                    number15.backgroundColor = UIColor.black
                    number15.layer.borderColor = UIColor.black.cgColor
                    number15.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi3 == 18{
                    number18.backgroundColor = UIColor.black
                    number18.layer.borderColor = UIColor.black.cgColor
                    number18.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
                if sayi3 == 21{
                    number21.backgroundColor = UIColor.black
                    number21.layer.borderColor = UIColor.black.cgColor
                    number21.setTitleColor(UIColor.white, for: UIControlState.normal)
                }
            }
        }
        
        if siraNo == 1{
            if secili1 == true{
                if sayi1 == 1{
                    number1.backgroundColor = UIColor.white
                    number1.layer.borderColor = UIColor.white.cgColor
                    number1.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi1 == 4{
                    number4.backgroundColor = UIColor.white
                    number4.layer.borderColor = UIColor.white.cgColor
                    number4.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi1 == 7{
                    number7.backgroundColor = UIColor.white
                    number7.layer.borderColor = UIColor.white.cgColor
                    number7.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi1 == 10{
                    number10.backgroundColor = UIColor.white
                    number10.layer.borderColor = UIColor.white.cgColor
                    number10.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi1 == 13{
                    number13.backgroundColor = UIColor.white
                    number13.layer.borderColor = UIColor.white.cgColor
                    number13.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi1 == 16{
                    number16.backgroundColor = UIColor.white
                    number16.layer.borderColor = UIColor.white.cgColor
                    number16.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi1 == 19{
                    number19.backgroundColor = UIColor.white
                    number19.layer.borderColor = UIColor.white.cgColor
                    number19.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
            }
            
            if secili2 == true{
                if sayi2 == 2{
                    number2.backgroundColor = UIColor.white
                    number2.layer.borderColor = UIColor.white.cgColor
                    number2.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi2 == 5{
                    number5.backgroundColor = UIColor.white
                    number5.layer.borderColor = UIColor.white.cgColor
                    number5.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi2 == 8{
                    number8.backgroundColor = UIColor.white
                    number8.layer.borderColor = UIColor.white.cgColor
                    number8.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi2 == 11{
                    number11.backgroundColor = UIColor.white
                    number11.layer.borderColor = UIColor.white.cgColor
                    number11.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi2 == 14{
                    number14.backgroundColor = UIColor.white
                    number14.layer.borderColor = UIColor.white.cgColor
                    number14.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi2 == 17{
                    number17.backgroundColor = UIColor.white
                    number17.layer.borderColor = UIColor.white.cgColor
                    number17.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi2 == 20{
                    number20.backgroundColor = UIColor.white
                    number20.layer.borderColor = UIColor.white.cgColor
                    number20.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
            }
            
            if secili3 == true{
                if sayi3 == 3{
                    number3.backgroundColor = UIColor.white
                    number3.layer.borderColor = UIColor.white.cgColor
                    number3.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi3 == 6{
                    number6.backgroundColor = UIColor.white
                    number6.layer.borderColor = UIColor.white.cgColor
                    number6.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi3 == 9{
                    number9.backgroundColor = UIColor.white
                    number9.layer.borderColor = UIColor.white.cgColor
                    number9.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi3 == 12{
                    number12.backgroundColor = UIColor.white
                    number12.layer.borderColor = UIColor.white.cgColor
                    number12.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi3 == 15{
                    number15.backgroundColor = UIColor.white
                    number15.layer.borderColor = UIColor.white.cgColor
                    number15.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi3 == 18{
                    number18.backgroundColor = UIColor.white
                    number18.layer.borderColor = UIColor.white.cgColor
                    number18.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
                if sayi3 == 21{
                    number21.backgroundColor = UIColor.white
                    number21.layer.borderColor = UIColor.white.cgColor
                    number21.setTitleColor(UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0), for: UIControlState.normal)
                }
            }
        }
    }
    
    //Fatih oynuyor fonksiyonu. Fatih'in nasıl oynaması gerektiğini gösteren fonksiyon.
    func fatihOynuyor(){
        if kalanSayi == 10 || kalanSayi == 9 || kalanSayi == 8 || kalanSayi == 7 || kalanSayi > 10{
            let rastgele = arc4random_uniform(UInt32(4)) + 1
            
            if rastgele == 1{
                secili1 = true
                kalanSayi = kalanSayi - 1
                sayiAdet = 1
                butonRenklendir()
                secilecekVeSecilenSayilarDurumu()
            }
            if rastgele == 2{
                secili1 = true
                secili2 = true
                kalanSayi = kalanSayi - 2
                sayiAdet = 2
                butonRenklendir()
                secilecekVeSecilenSayilarDurumu()
            }
            if rastgele == 3{
                secili1 = true
                secili2 = true
                secili3 = true
                kalanSayi = kalanSayi - 3
                sayiAdet = 3
                butonRenklendir()
                secilecekVeSecilenSayilarDurumu()
            }
            if rastgele == 4{
                secili1 = false
                secili2 = false
                secili3 = false
                sayiAdet = 0
                butonRenklendir()
                secilecekVeSecilenSayilarDurumu()
            }
        }
        
        if kalanSayi == 6{
            let rastgele = arc4random_uniform(UInt32(3)) + 1
            
            if rastgele == 1{
                secili1 = true
                sayiAdet = 1
                kalanSayi = kalanSayi - 1
                butonRenklendir()
                secilecekVeSecilenSayilarDurumu()
            }
            if rastgele == 2{
                secili1 = true
                secili2 = true
                sayiAdet = 2
                kalanSayi = kalanSayi - 2
                butonRenklendir()
                secilecekVeSecilenSayilarDurumu()
            }
            if rastgele == 3{
                secili1 = false
                secili2 = false
                secili3 = false
                sayiAdet = 0
                butonRenklendir()
                secilecekVeSecilenSayilarDurumu()
            }
        }
        
        if kalanSayi == 5{
            let rastgele = arc4random_uniform(UInt32(2)) + 1
            
            if rastgele == 1{
                secili1 = true
                sayiAdet = 1
                kalanSayi = kalanSayi - 1
                butonRenklendir()
                secilecekVeSecilenSayilarDurumu()
            }
            if rastgele == 2{
                secili1 = false
                secili2 = false
                secili3 = false
                sayiAdet = 0
                secilecekVeSecilenSayilarDurumu()
            }
        }
        
        if kalanSayi == 4{
            if sayiAdet == 0{
                secili1 = false
                secili2 = false
                secili3 = false
                sayiAdet = 0
                butonRenklendir()
                secilecekVeSecilenSayilarDurumu()
            }
        }
        
        if kalanSayi == 3{
            secili1 = true
            secili2 = true
            secili3 = true
            sayiAdet = 3
            butonRenklendir()
            secilecekVeSecilenSayilarDurumu()
        }
        
        if kalanSayi == 2{
            secili1 = true
            secili2 = true
            sayiAdet = 2
            butonRenklendir()
            secilecekVeSecilenSayilarDurumu()
        }
        
        if kalanSayi == 1{
            secili1 = true
            butonRenklendir()
            secilecekVeSecilenSayilarDurumu()
        }
        
        siraNo = 0
        seciliButonlariSifirlar()
        oynaButton.isHidden = false
        pasGecButton.isHidden = false
        secilecek1Button.isHidden = false
        secilecek2Button.isHidden = false
        secilecek3Button.isHidden = false
        fatihLabel.isHidden = true
    }
    
    //MARK: startButton fonksiyonu. Oyunu başlatan buton.
    func startButton(sender: UIButton!){
        self.navigationController?.pushViewController(gameScreenVC(), animated: true)
    }
    
    // --------------------------------------------------------------------------- gameScreen Nesneleri Bitiş -----------------------------------------------------//
    
    // --------------------------------------------------------------------------- gameFinishedScreen Nesneleri Başlangıç -----------------------------------------//
    
    
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
    
    //MARK: againButton nesnesi oluşturuldu
    let againButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "againButton_bg"), for: .normal)
        button.addTarget(self, action: #selector(goAgainButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: goAgainButton fonksiyonu. Oyunun tekrar başlamasını sağlıyor.
    func goAgainButton(sender: UIButton!){
        self.navigationController?.pushViewController(gameScreenVC(), animated: true)
    }
    
    func gameFinishedGizle(){
        winLabel.isHidden = false
        senteceLabel.isHidden = false
    }
    
    func gameFinishedGoster(){
        winLabel.isHidden = true
        senteceLabel.isHidden = true
    }

    
    // --------------------------------------------------------------------------- gameFinishedScreen Nesneleri Bitiş ---------------------------------------------//
    
    // --------------------------------------------------------------------------- gameStoppedScreen Nesneleri Başlangıç ------------------------------------------//
    
    //MARK: 21 yazacak label nesnesi oluşturuldu.
    let number21Label: UILabel = {
        let label = UILabel()
        label.text = "21"
        label.numberOfLines = 1
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        label.font = UIFont(name: "Avenir-Book", size: 100)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: Says label nesnesi oluşturuldu.
    let saysLabel: UILabel = {
        let label = UILabel()
        label.text = "Fatih diyor ki: \(saysSentece[1])!'"
        label.numberOfLines = 5
        label.textColor = UIColor(red: 0.31, green: 0.36, blue: 0.43, alpha: 1.0)
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Book", size: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // --------------------------------------------------------------------------- gameStoppedScreen Nesneleri Bitiş ----------------------------------------------//
    
    //MARK: Nesneler ekrana ekleniyor ve constraint değerleri belirleniyor.
    func setupViews(){
        //MARK: Nesneler ekranan ekleniyor.
        view.addSubview(durumLabel)
        view.addSubview(sayiArkaPlanView)
        view.addSubview(number1)
        view.addSubview(number2)
        view.addSubview(number3)
        view.addSubview(number4)
        view.addSubview(number5)
        view.addSubview(number6)
        view.addSubview(number7)
        view.addSubview(number8)
        view.addSubview(number9)
        view.addSubview(number10)
        view.addSubview(number11)
        view.addSubview(number12)
        view.addSubview(number13)
        view.addSubview(number14)
        view.addSubview(number15)
        view.addSubview(number16)
        view.addSubview(number17)
        view.addSubview(number18)
        view.addSubview(number19)
        view.addSubview(number20)
        view.addSubview(number21)
        view.addSubview(secilecek1Button)
        view.addSubview(secilecek2Button)
        view.addSubview(secilecek3Button)
        view.addSubview(fatihLabel)
        view.addSubview(mainButton)
        view.addSubview(stoppedButton)
        view.addSubview(oynaButton)
        view.addSubview(pasGecButton)
        
        //MARK: Nesnelerin constraint değerleri belirleniyor.
        let durumLabelTop = NSLayoutConstraint(item: durumLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 10)
        let durumLabelRight = NSLayoutConstraint(item: durumLabel, attribute: .rightMargin, relatedBy: .equal, toItem: self.view, attribute: .rightMargin, multiplier: 1.0, constant: 20)
        
        let sayiTop = NSLayoutConstraint(item: sayiArkaPlanView, attribute: .top, relatedBy: .equal, toItem: self.durumLabel, attribute: .top, multiplier: 1.0, constant: 75)
        let sayiHeifgt = NSLayoutConstraint(item: sayiArkaPlanView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 144)
        let sayiLeft = NSLayoutConstraint(item: sayiArkaPlanView, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 0)
        let sayiRight = NSLayoutConstraint(item: sayiArkaPlanView, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1.0, constant: 0)
        
        let number1Top = NSLayoutConstraint(item: number1, attribute: .top, relatedBy: .equal, toItem: self.sayiArkaPlanView, attribute: .top, multiplier: 1.0, constant: 10)
        let number1Left = NSLayoutConstraint(item: number1, attribute: .left, relatedBy: .equal, toItem: self.sayiArkaPlanView, attribute: .left, multiplier: 1.0, constant: 15)
        let number1Height = NSLayoutConstraint(item: number1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number1Width = NSLayoutConstraint(item: number1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number2Top = NSLayoutConstraint(item: number2, attribute: .top, relatedBy: .equal, toItem: self.sayiArkaPlanView, attribute: .top, multiplier: 1.0, constant: 10)
        let number2Left = NSLayoutConstraint(item: number2, attribute: .left, relatedBy: .equal, toItem: self.number1, attribute: .left, multiplier: 1.0, constant: 42)
        let number2Height = NSLayoutConstraint(item: number2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number2Width = NSLayoutConstraint(item: number2, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number3Top = NSLayoutConstraint(item: number3, attribute: .top, relatedBy: .equal, toItem: self.sayiArkaPlanView, attribute: .top, multiplier: 1.0, constant: 10)
        let number3Left = NSLayoutConstraint(item: number3, attribute: .left, relatedBy: .equal, toItem: self.number2, attribute: .left, multiplier: 1.0, constant: 42)
        let number3Height = NSLayoutConstraint(item: number3, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number3Width = NSLayoutConstraint(item: number3, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number4Top = NSLayoutConstraint(item: number4, attribute: .top, relatedBy: .equal, toItem: self.sayiArkaPlanView, attribute: .top, multiplier: 1.0, constant: 10)
        let number4Left = NSLayoutConstraint(item: number4, attribute: .left, relatedBy: .equal, toItem: self.number3, attribute: .left, multiplier: 1.0, constant: 42)
        let number4Height = NSLayoutConstraint(item: number4, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number4Width = NSLayoutConstraint(item: number4, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number5Top = NSLayoutConstraint(item: number5, attribute: .top, relatedBy: .equal, toItem: self.sayiArkaPlanView, attribute: .top, multiplier: 1.0, constant: 10)
        let number5Left = NSLayoutConstraint(item: number5, attribute: .left, relatedBy: .equal, toItem: self.number4, attribute: .left, multiplier: 1.0, constant: 42)
        let number5Height = NSLayoutConstraint(item: number5, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number5Width = NSLayoutConstraint(item: number5, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number6Top = NSLayoutConstraint(item: number6, attribute: .top, relatedBy: .equal, toItem: self.sayiArkaPlanView, attribute: .top, multiplier: 1.0, constant: 10)
        let number6Left = NSLayoutConstraint(item: number6, attribute: .left, relatedBy: .equal, toItem: self.number5, attribute: .left, multiplier: 1.0, constant: 42)
        let number6Height = NSLayoutConstraint(item: number6, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number6Width = NSLayoutConstraint(item: number6, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number7Top = NSLayoutConstraint(item: number7, attribute: .top, relatedBy: .equal, toItem: self.sayiArkaPlanView, attribute: .top, multiplier: 1.0, constant: 10)
        let number7Left = NSLayoutConstraint(item: number7, attribute: .left, relatedBy: .equal, toItem: self.number6, attribute: .left, multiplier: 1.0, constant: 42)
        let number7Height = NSLayoutConstraint(item: number7, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number7Width = NSLayoutConstraint(item: number7, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number8Top = NSLayoutConstraint(item: number8, attribute: .top, relatedBy: .equal, toItem: self.number1, attribute: .top, multiplier: 1.0, constant: 42)
        let number8Left = NSLayoutConstraint(item: number8, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 15)
        let number8Height = NSLayoutConstraint(item: number8, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number8Width = NSLayoutConstraint(item: number8, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number9Top = NSLayoutConstraint(item: number9, attribute: .top, relatedBy: .equal, toItem: self.number1, attribute: .top, multiplier: 1.0, constant: 42)
        let number9Left = NSLayoutConstraint(item: number9, attribute: .left, relatedBy: .equal, toItem: self.number8, attribute: .left, multiplier: 1.0, constant: 42)
        let number9Height = NSLayoutConstraint(item: number9, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number9Width = NSLayoutConstraint(item: number9, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number10Top = NSLayoutConstraint(item: number10, attribute: .top, relatedBy: .equal, toItem: self.number1, attribute: .top, multiplier: 1.0, constant: 42)
        let number10Left = NSLayoutConstraint(item: number10, attribute: .left, relatedBy: .equal, toItem: self.number9, attribute: .left, multiplier: 1.0, constant: 42)
        let number10Height = NSLayoutConstraint(item: number10, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number10Width = NSLayoutConstraint(item: number10, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number11Top = NSLayoutConstraint(item: number11, attribute: .top, relatedBy: .equal, toItem: self.number1, attribute: .top, multiplier: 1.0, constant: 42)
        let number11Left = NSLayoutConstraint(item: number11, attribute: .left, relatedBy: .equal, toItem: self.number10, attribute: .left, multiplier: 1.0, constant: 42)
        let number11Height = NSLayoutConstraint(item: number11, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number11Width = NSLayoutConstraint(item: number11, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number12Top = NSLayoutConstraint(item: number12, attribute: .top, relatedBy: .equal, toItem: self.number1, attribute: .top, multiplier: 1.0, constant: 42)
        let number12Left = NSLayoutConstraint(item: number12, attribute: .left, relatedBy: .equal, toItem: self.number11, attribute: .left, multiplier: 1.0, constant: 42)
        let number12Height = NSLayoutConstraint(item: number12, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number12Width = NSLayoutConstraint(item: number12, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number13Top = NSLayoutConstraint(item: number13, attribute: .top, relatedBy: .equal, toItem: self.number1, attribute: .top, multiplier: 1.0, constant: 42)
        let number13Left = NSLayoutConstraint(item: number13, attribute: .left, relatedBy: .equal, toItem: self.number12, attribute: .left, multiplier: 1.0, constant: 42)
        let number13Height = NSLayoutConstraint(item: number13, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number13Width = NSLayoutConstraint(item: number13, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number14Top = NSLayoutConstraint(item: number14, attribute: .top, relatedBy: .equal, toItem: self.number1, attribute: .top, multiplier: 1.0, constant: 42)
        let number14Left = NSLayoutConstraint(item: number14, attribute: .left, relatedBy: .equal, toItem: self.number13, attribute: .left, multiplier: 1.0, constant: 42)
        let number14Height = NSLayoutConstraint(item: number14, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number14Width = NSLayoutConstraint(item: number14, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number15Top = NSLayoutConstraint(item: number15, attribute: .top, relatedBy: .equal, toItem: self.number8, attribute: .top, multiplier: 1.0, constant: 42)
        let number15Left = NSLayoutConstraint(item: number15, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 15)
        let number15Height = NSLayoutConstraint(item: number15, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number15Width = NSLayoutConstraint(item: number15, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number16Top = NSLayoutConstraint(item: number16, attribute: .top, relatedBy: .equal, toItem: self.number8, attribute: .top, multiplier: 1.0, constant: 42)
        let number16Left = NSLayoutConstraint(item: number16, attribute: .left, relatedBy: .equal, toItem: self.number15, attribute: .left, multiplier: 1.0, constant: 42)
        let number16Height = NSLayoutConstraint(item: number16, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number16Width = NSLayoutConstraint(item: number16, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number17Top = NSLayoutConstraint(item: number17, attribute: .top, relatedBy: .equal, toItem: self.number8, attribute: .top, multiplier: 1.0, constant: 42)
        let number17Left = NSLayoutConstraint(item: number17, attribute: .left, relatedBy: .equal, toItem: self.number16, attribute: .left, multiplier: 1.0, constant: 42)
        let number17Height = NSLayoutConstraint(item: number17, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number17Width = NSLayoutConstraint(item: number17, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number18Top = NSLayoutConstraint(item: number18, attribute: .top, relatedBy: .equal, toItem: self.number8, attribute: .top, multiplier: 1.0, constant: 42)
        let number18Left = NSLayoutConstraint(item: number18, attribute: .left, relatedBy: .equal, toItem: self.number17, attribute: .left, multiplier: 1.0, constant: 42)
        let number18Height = NSLayoutConstraint(item: number18, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number18Width = NSLayoutConstraint(item: number18, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number19Top = NSLayoutConstraint(item: number19, attribute: .top, relatedBy: .equal, toItem: self.number8, attribute: .top, multiplier: 1.0, constant: 42)
        let number19Left = NSLayoutConstraint(item: number19, attribute: .left, relatedBy: .equal, toItem: self.number18, attribute: .left, multiplier: 1.0, constant: 42)
        let number19Height = NSLayoutConstraint(item: number19, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number19Width = NSLayoutConstraint(item: number19, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number20Top = NSLayoutConstraint(item: number20, attribute: .top, relatedBy: .equal, toItem: self.number8, attribute: .top, multiplier: 1.0, constant: 42)
        let number20Left = NSLayoutConstraint(item: number20, attribute: .left, relatedBy: .equal, toItem: self.number19, attribute: .left, multiplier: 1.0, constant: 42)
        let number20Height = NSLayoutConstraint(item: number20, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number20Width = NSLayoutConstraint(item: number20, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let number21Top = NSLayoutConstraint(item: number21, attribute: .top, relatedBy: .equal, toItem: self.number8, attribute: .top, multiplier: 1.0, constant: 42)
        let number21Left = NSLayoutConstraint(item: number21, attribute: .left, relatedBy: .equal, toItem: self.number20, attribute: .left, multiplier: 1.0, constant: 42)
        let number21Height = NSLayoutConstraint(item: number21, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        let number21Width = NSLayoutConstraint(item: number21, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 40)
        
        let secilecek1Top = NSLayoutConstraint(item: secilecek1Button, attribute: .top, relatedBy: .equal, toItem: self.sayiArkaPlanView, attribute: .top, multiplier: 1.0, constant: 164)
        let secilecek1Left = NSLayoutConstraint(item: secilecek1Button, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 20)
        let secilecek1Height = NSLayoutConstraint(item: secilecek1Button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 60)
        let secilecek1Width = NSLayoutConstraint(item: secilecek1Button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 60)
        
        let secilecek2Top = NSLayoutConstraint(item: secilecek2Button, attribute: .top, relatedBy: .equal, toItem: self.sayiArkaPlanView, attribute: .top, multiplier: 1.0, constant: 164)
        let secilecek2Left = NSLayoutConstraint(item: secilecek2Button, attribute: .left, relatedBy: .equal, toItem: self.secilecek1Button, attribute: .left, multiplier: 1.0, constant: 65)
        let secilecek2Height = NSLayoutConstraint(item: secilecek2Button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 60)
        let secilecek2Width = NSLayoutConstraint(item: secilecek2Button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 60)
        
        let secilecek3Top = NSLayoutConstraint(item: secilecek3Button, attribute: .top, relatedBy: .equal, toItem: self.sayiArkaPlanView, attribute: .top, multiplier: 1.0, constant: 164)
        let secilecek3Left = NSLayoutConstraint(item: secilecek3Button, attribute: .left, relatedBy: .equal, toItem: self.secilecek2Button, attribute: .left, multiplier: 1.0, constant: 65)
        let secilecek3Height = NSLayoutConstraint(item: secilecek3Button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 60)
        let secilecek3Width = NSLayoutConstraint(item: secilecek3Button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 60)
        
        let fatihLabelTop = NSLayoutConstraint(item:fatihLabel, attribute: .top, relatedBy: .equal, toItem: self.secilecek1Button, attribute: .top, multiplier: 1.0, constant: 100)
        let fatihLabelCenter = NSLayoutConstraint(item: fatihLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let mainButtonBottom = NSLayoutConstraint(item: mainButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -25)
        let mainButtonLeft = NSLayoutConstraint(item: mainButton, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 25)
        
        let stoppedButtonBottom = NSLayoutConstraint(item: stoppedButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -25)
        let stoppedButtonRight = NSLayoutConstraint(item: stoppedButton, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1.0, constant: -25)
        
        let oynaButtonBottom = NSLayoutConstraint(item: oynaButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -25)
        let oynaButtonLeft = NSLayoutConstraint(item: oynaButton, attribute: .left, relatedBy: .equal, toItem: self.mainButton, attribute: .left, multiplier: 1.0, constant: 55)
        let oynaButonWidth = NSLayoutConstraint(item: oynaButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 65)
        
        let pasGecButtonBottom = NSLayoutConstraint(item: pasGecButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -25)
        let pasGecButtonRight = NSLayoutConstraint(item: pasGecButton, attribute: .right, relatedBy: .equal, toItem: self.stoppedButton, attribute: .right, multiplier: 1.0, constant: -35)
        let pasGecButonWidth = NSLayoutConstraint(item: pasGecButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 85)
        
        //MARK: Nesnelerin constraint değerleri ekrana ekleniyor.
        NSLayoutConstraint.activate([durumLabelTop,durumLabelRight,sayiTop,sayiHeifgt,sayiLeft,sayiRight,number1Top,number1Left,number1Width,number1Height,number2Top,number2Left,number2Width,number2Height,number3Top,number3Left,number3Width,number3Height,number4Top,number4Left,number4Width,number4Height,number5Top,number5Left,number5Width,number5Height,number6Top,number6Left,number6Width,number6Height,number7Top,number7Left,number7Width,number7Height,number8Top,number8Left,number8Width,number8Height,number9Top,number9Left,number9Width,number9Height,number10Top,number10Left,number10Width,number10Height,number11Top,number11Left,number11Width,number11Height,number12Top,number12Left,number12Width,number12Height,number13Top,number13Left,number13Width,number13Height,number14Top,number14Left,number14Width,number14Height,number15Top,number15Left,number15Width,number15Height,number16Top,number16Left,number16Width,number16Height,number17Top,number17Left,number17Width,number17Height,number18Top,number18Left,number18Width,number18Height,number19Top,number19Left,number19Width,number19Height,number20Top,number20Left,number20Width,number20Height,number21Top,number21Left,number21Width,number21Height,secilecek1Top,secilecek1Left,secilecek1Width,secilecek1Height,secilecek2Top,secilecek2Left,secilecek2Width,secilecek2Height,secilecek3Top,secilecek3Left,secilecek3Width,secilecek3Height,fatihLabelTop,fatihLabelCenter,mainButtonBottom,mainButtonLeft,stoppedButtonBottom,stoppedButtonRight,oynaButtonLeft,oynaButtonBottom,oynaButonWidth,pasGecButonWidth,pasGecButtonRight,pasGecButtonBottom])
    }
}
