//
//  ViewControllerBlue.swift
//  colorSelector
//
//  Created by Nicolas Aponte on 2/10/22.
//

import UIKit

class ViewControllerBlue: UIViewController {

    var titulo:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let tituloFinal = titulo {
            self.title = tituloFinal
        }
    }
}
