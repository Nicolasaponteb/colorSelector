//
//  ViewController.swift
//  colorSelector
//
//  Created by Nicolas Aponte on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func blackButton(_ sender: Any) {
        
        performSegue(withIdentifier: "blackVC", sender: self)
    }
    
    
    @IBAction func pinkButton(_ sender: Any) {
        
        performSegue(withIdentifier: "pinkVC", sender: self)
    }
    
    
    @IBAction func blueButton(_ sender: Any) {
        
        performSegue(withIdentifier: "blueVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "blackVC"{
            
            if let site = segue.destination as? ViewControllerBlack {
                
                site.titulo = "Negro"
            }
        }else if segue.identifier == "pinkVC"{
            
            if let site = segue.destination as? ViewControllerPink {
                
                site.titulo = "Rosa"
            }
        }else {
            
            if let site = segue.destination as? ViewControllerBlue {
                
                site.titulo = "Azul"
            }
        }
    }
}

