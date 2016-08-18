//
//  ViewController.swift
//  PokeEvolutionHelper
//
//  Created by Luke Beninga on 8/15/16.
//  Copyright © 2016 Luke Beninga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var dictionary = [
    
        "Bulbasaur": 2.22,
        "Ivysaur": 1.91,
        "Charmander":2.34,
        "Charmeleon":2.01,
        "Squirtle":1.74,
        "Wartortle": 1.83,
        "Caterpie":1.49,
        "Metapod":3.38,
        "Weedle":1.17,
        "Kakuna":3.28,
        "Pidgey":1.92,
        "Pidgeotto":1.94,
        "Rattata":2.63,
        "Spearow":2.64,
        "Ekans":2.22,
        "Pikachu":2.46,
        "Sandshrew":2.35,
        "Nidoran F":1.71,
        "Nidorina":1.84,
        "Nidoran M":1.68,
        "Nidorino":1.83,
        "Clefairy":1.93,
        "Vulpix":2.50,
        "Jigglypuff":2.41,
        "Zubat":3.15,
        "Oddish":1.53,
        "Gloom":2.05,
        "Paras": 1.94,
        "Venonat": 1.9,
        "Diglett":3.18,
        "Meowth":2.2,
        "Psyduck":2.31,
        "Mankey":2.14,
        "Growlithe":2.35,
        "Poliwag":1.72,
        "Poliwhirl":1.79,
        "Abra":2.59,
        "Kadabra":2.09,
        "Machop":1.69,
        "Machoke":1.56,
        "Bellsprout":1.89,
        "Weepinbell":1.49,
        "Tentacool":3.47,
        "Geodude":1.84,
        "Graveler": 1.68,
        "Ponyta":1.50,
        "Slowpoke":2.23,
        "Magnemite":2.23,
        "Doduo":2.20,
        "Seel":1.68,
        "Grimer":2.44,
        "Shelder":2.58,
        "Gastly":1.95,
        "Haunter":1.90,
        "Drowzee":2.09,
        "Krabby":2.36,
        "Voltorb":2.01,
        "Exceggcute": 2.61,
        "Cubone":1.79,
        "Koffing":4,
        "Rhyhorn":2.06,
        "Horsea":2.19,
        "Goldeen":2.21,
        "Staryu":2.37,
        "Magikarp": 10.55,
        "Eavee": 2.59,
        "Omanyte":4.44,
        "Kabuto":2.11,
        "Dratini":2.56,
        "Dragonair": 2.01
    ]
    
    let pickerData =
        ["Bulbasaur","Ivysaur","Charmander","Charmeleon","Squirtle","Wartortle", "Caterpie","Metapod", "Weedle","Kakuna","Pidgey", "Pidgeotto","Rattata","Spearow","Ekans", "Pikachu","Sandshrew","Nidoran F","Nidorina","Nidoran M","Nidorino","Clefairy", "Vulpix", "Jigglypuff", "Zubat", "Oddish","Gloom","Paras","Venonat","Diglett","Meowth","Psyduck","Mankey","Growlithe","Poliwag","Poliwhirl","Abra","Kadabra","Machop","Machoke","Bellsprout","Weepinbell","Tentacool","Geodude","Graveler", "Ponyta","Slowpoke","Magnemite","Doduo", "Seel", "Grimer", "Shelder", "Gastly", "Seel", "Haunter", "Drowzee", "Krabby", "Voltorb", "Exceggcute", "Cubone", "Koffing","Rhyhorn","Horsea","Goldeen", "Staryu", "Magikarp","Eavee","Omanyte","Kabuto","Dratini","Dragonair"]
    
    var selectedPokemon: String!
    var currentScore: String!
    

    @IBOutlet weak var newScore: UILabel!
    @IBOutlet weak var myPicker: UIPickerView!
    @IBOutlet weak var field: UITextField!
    @IBAction func evolveButton(sender: AnyObject) {
       let currentScore: String! = self.field.text!
        print(currentScore)
       var score =  Double(currentScore)
        score = score! * dictionary[selectedPokemon as String]!
        newScore.text = String(Int(score!))
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPicker.delegate = self
        myPicker.dataSource = self
        
        
    }
    
    func numberOfComponentsInPickerView(_pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_pickerView: UIPickerView,numberOfRowsInComponent component: Int) -> Int{
        return 70
        
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selectedPokemon = pickerData[row]
        print(selectedPokemon)
       
        }
}

