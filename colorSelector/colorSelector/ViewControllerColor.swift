//
//  ViewControllerColor.swift
//  colorSelector
//
//  Created by Nicolas Aponte on 2/11/22.
//

import UIKit

class ViewControllerColor: UIViewController {
    
    var colorTitle:String?
    var colorBackground:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let finalTitle = colorTitle{
            self.title = finalTitle
        }
        
        if let finalBG = colorBackground{
            self.view.backgroundColor = finalBG
        }
    }
}
