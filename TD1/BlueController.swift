//
//  BlueController.swift
//  TD1
//
//  Created by Manu on 14/03/2023.
//

import UIKit

class BlueController: UIViewController {
    @IBOutlet weak var saisie: UITextField! // TextField de la page courante
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // se declenche avant le changement de la page
    // permet d'envoyer un Paramètre vers la page Jaune
    // Ici mot saisie dans Blue vers Jaune
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        print("Debut de la transition")
        let mcj = segue.destination as! ControllerPageJaune // destination page jaune
        mcj.nom = saisie.text! // nom aura la valeur saisie
    }
    

}
