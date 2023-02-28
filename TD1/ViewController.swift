//
//  ViewController.swift
//  TD1
//
//  Created by Manu on 28/02/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var AfiicheLabel: UILabel!
    
    var nb: Int = 0
    @IBAction func clickUo(_ sender: Any) {
        nb += 1
        AfiicheLabel.text = "Incrémentation de \(nb)"
    }
}

