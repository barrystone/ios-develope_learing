//
//  ViewController.swift
//  Segue
//
//  Created by students on 2021/3/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    
    
    @IBAction func goToSecView(_ sender: UIButton) {
        
        performSegue(withIdentifier:"orange", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "orange"{
            let detinationViewController = segue.destination as! orangeViewController
            
            detinationViewController.message = inputText.text
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

