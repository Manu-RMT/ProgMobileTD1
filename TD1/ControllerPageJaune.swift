//
//  ControllerPageJaune.swift
//  TD1
//
//  Created by Manu on 14/03/2023.
//

import UIKit

class ControllerPageJaune: UIViewController {

    @IBOutlet weak var AffichagePage: UILabel!
    var nom : String = "" // nom saisie dans le controlleur bleu
    
    @IBAction func ChangeLabel(_ sender: Any) {
        
        AffichagePage.text = "Tu as reussi à venir ici"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AffichagePage.text = "Bonjour \(nom)"
        
        // Do any additional setup after loading the view.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
