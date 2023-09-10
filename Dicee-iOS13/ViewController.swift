//
//  File.swift
//  Dicee-iOS13
//
//  Created by Samet Korkmaz on 10.09.2023.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    // viewlara control ile tutup burada tanımladık

    override func viewDidLoad() { // görüntü yüklenince olacaklar
        super.viewDidLoad()
    }
    // butonu tanımlıyoruz
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        // zar imagelerini dizi içerisine attık
        // #imageLiteral() imageleri elle seçmemizi sağlar

        // 2 şekilde rastgeşe sayı üretilebilir
        diceImageView1.image = diceArray.randomElement() // dizinin elemanları içerisinden rastgele eleman seçer
        diceImageView2.image = diceArray[Int.random(in: 0...5)] // 0-5 arasında rastgele integer değer verir
        
    }
    
}

