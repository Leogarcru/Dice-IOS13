//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeFirstDiceFaceAttributes(face:"DiceFour", alpha:0.5);
        changeSecondDiceFaceAttributes(face:"DiceTwo", alpha:0.5);
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let dicesFaces = ["DiceOne","DiceTwo","DiceThree",
                          "DiceFour","DiceFive","DiceSix",]
        
        var firstDiceNumber = Int.random(in: 0...5)
        var secondDiceNumber = Int.random(in: 0...5)
        print("Left: \(firstDiceNumber + 1), Right: \(secondDiceNumber + 1)")
        //print(secondDiceNumber);
        
        //changeFirstDiceFaceAttributes(face:dicesFaces[firstDiceNumber], alpha:1);
        changeFirstDiceFaceAttributes(face:dicesFaces.randomElement()!, alpha:1);
        changeSecondDiceFaceAttributes(face:dicesFaces[secondDiceNumber], alpha:1);
    }
    

    
//From the bellow, are the functions wich are being called after the load function

    //This modifies the left dice appearence attributes at invoked
    /*you can use paremters in functions to impruve re-usability
     when defining the function, use the () to put in the parameters
     you are interested in following this format:
     name:type, v.gr. numeroDeLanzado:Int*/
    func changeFirstDiceFaceAttributes(face:String, alpha:CGFloat){
        //Change the image properti by the image literal name
        //attribute changing fomula:
        //who      .     what    =    attribute value
        diceImageViewOne.image = UIImage(named: face);
        diceImageViewOne.alpha = alpha;
    }
    //This modifies the right dice appearence attributes at loading
    func changeSecondDiceFaceAttributes(face:String, alpha:CGFloat){
        diceImageViewTwo.image = UIImage(named: face);
        diceImageViewTwo.alpha = alpha;
    }
}
