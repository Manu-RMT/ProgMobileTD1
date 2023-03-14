//
//  BlueController.swift
//  TD1
//
//  Created by Manu on 14/03/2023.
//

import UIKit

class BlueController: UIViewController {
    @IBOutlet weak var saisie: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        print("Debut de la transition")
        var mcj = segue.destination as! ControllerPageJaune
        mcj.nom = saisie.text!
    }
    

}
