//
//  ViewController.swift
//  QuantoFaz
//
//  Created by Heitor Augusto Pereira on 29/01/16.
//  Copyright © 2016 Heitor Augusto Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var precoEtanol: UITextField!
    @IBOutlet weak var precoGasolina: UITextField!
    @IBOutlet weak var consumoEtanol: UITextField!
    @IBOutlet weak var consumoGasolina: UITextField!
    @IBOutlet weak var displayFinal: UILabel!
    
    
    
    @IBAction func calcular(sender: UIButton) {
        
        let pEtanol = Float(precoEtanol.text!) ?? 0.0
        let pGasolina = Float(precoGasolina.text!) ?? 0.0
        let cEtanol = Float(consumoEtanol.text!) ?? 0.0
        let cGasolina = Float(consumoGasolina.text!) ?? 0.0
        
        let gastoEtanol = pEtanol / cEtanol
        let gastoGasolina = pGasolina / cGasolina
        
        if gastoEtanol > gastoGasolina {
            displayFinal.text = "O seu carro gasta R$ \(gastoGasolina) por KM com gasolina. \n E R$ \(gastoEtanol) com etanol. Portanto, utilize Gasolina."
        } else {
            displayFinal.text = "O seu carro gasta R$ \(gastoEtanol) por KM com etanol. \n E R$ \(gastoGasolina) com gasolina. Portanto, utilize Etanol."
        }
        self.consumoGasolina.resignFirstResponder()
        self.consumoEtanol.resignFirstResponder()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

