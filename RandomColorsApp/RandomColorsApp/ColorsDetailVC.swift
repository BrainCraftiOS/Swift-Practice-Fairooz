//
//  ColorsDetailVC.swift
//  RandomColorsApp
//
//  Created by Fairooz Rahman on 20/8/23.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        view.backgroundColor = color ?? .blue
    }
}
