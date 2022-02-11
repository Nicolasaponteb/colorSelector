//
//  ViewControllerBlack.swift
//  colorSelector
//
//  Created by Nicolas Aponte on 2/10/22.
//

import UIKit

class ViewControllerBlack: UIViewController {

    var titulo:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tituloFinal = titulo {
            self.title = tituloFinal
        } //De esta manera se desempaqueta de manera correcta
        
         // self.title = titulo!//No es buena practica
    }
}
