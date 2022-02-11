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
    
    @IBAction func yellowButton(_ sender: Any) {
        performSegue(withIdentifier: "yellowColor", sender: self)
    }
    
    @IBAction func blueButton(_ sender: Any) {
        performSegue(withIdentifier: "blueColor", sender: self)
    }
    
    
    @IBAction func redButton(_ sender: Any) {
        performSegue(withIdentifier: "redColor", sender: self)
    }
    
    @IBAction func greenButton(_ sender: Any) {
        performSegue(withIdentifier: "greenColor", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "yellowColor"{
            
            if let colors = segue.destination as?
                ViewControllerColor{
                
                colors.colorTitle = "Amarillo"
                colors.colorBackground = UIColor.yellow
            }
        }else if segue.identifier == "blueColor"{
            
            if let colors = segue.destination as?
                ViewControllerColor{
                
                colors.colorTitle = "Azul"
                colors.colorBackground = UIColor.blue
            }
        }else if segue.identifier == "redColor"{
            
            if let colors = segue.destination as?
                ViewControllerColor{
                
                colors.colorTitle = "Rojo"
                colors.colorBackground = UIColor.red
            }
        }else{
            if let colors = segue.destination as?
                ViewControllerColor{
                
                colors.colorTitle = "Green"
                colors.colorBackground = UIColor.green
            }
        }
    }
}

