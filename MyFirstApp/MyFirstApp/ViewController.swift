//
//  ViewController.swift
//  MyFirstApp
//
//  Created by students on 2021/2/26.
//

import UIKit

class ViewController: UIViewController {
    
    var diceArray = ["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"]
    @IBOutlet weak var showValueText: UILabel!
    
    func dicing(){
        let diceView1Index = arc4random_uniform(6)
        let diceView2Index = arc4random_uniform(6)
        
        let point = (Int(diceView1Index) + Int(diceView2Index)) + 2
        
        let answer = "You SCORE is " + String(point) + " points"
        
        showValueText.text = answer

        

      // Change image (as UIImage) base on file name
//        diceView1.image = UIImage(named: "Dice4")
        diceView1.image = UIImage(named: String(diceArray[Int(diceView1Index)]))
        diceView2.image = UIImage(named: String(diceArray[Int(diceView2Index)]))
    }
    
    // When shaking(one of motion) the phone will do something ...
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == UIEvent.EventSubtype.motionShake  {
            dicing()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = UIColor.orange;
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        print("App opened")
        
        dicing()
    }
       
    @IBOutlet weak var diceView1: UIImageView!
    
    @IBOutlet weak var diceView2: UIImageView!
    
    @IBAction func dicingButton(_ sender: UIButton) {
        print("dicing")
        
        dicing()
    }
    
    
}
	
