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
    @IBOutlet weak var saisie: UITextField!
    @IBOutlet weak var AfficheResultat: UILabel!
    @IBOutlet weak var reload_game: UIButton!
    @IBOutlet weak var button_resultat: UIButton!
    
    
    var nb: Int = 0 // variable de type int
    var random_number = Int.random(in: 1...5)
    func generate_random() {
        return
    }
    
    @IBAction func clickUo(_ sender: Any) {
        nb += 1
        AfiicheLabel.text = "Nombre de tentative : \(nb) "
        
    }
    
    @IBAction func clickSaisie(_ sender: Any) {
        nb += 1
        AfiicheLabel.text = "Nombre de tentative : \(nb) "
        reload_game.isHidden = true
        
        let val = Int(saisie.text!) ?? 0
        print(val, random_number)
        
        if (val == 0) {
            return AfficheResultat.text = "Valeur null ou non Int"
        }
        
        if (random_number < val)  {
            return AfficheResultat.text = "Nombre trop grand "
        }
        
        if (random_number > val)  {
            return AfficheResultat.text = "Nombre trop petit"
        }
        
        if (random_number == val)  {
            print("je passe")
            AfficheResultat.text = "Bravo, Vous avez gagné"
            reload_game.isHidden = false
            button_resultat.isHidden = true
        }
       
                
    }
    
    @IBAction func button_game(_ sender: Any) {
        nb = 0
        saisie.text = ""
        button_resultat.isHidden = false
        AfiicheLabel.text = "Lancement du jeu"
        AfficheResultat.text = "Résultat"
        reload_game.isHidden = true
        random_number = Int.random(in: 1...5)
    }
    
}
