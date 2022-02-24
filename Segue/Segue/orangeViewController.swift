//
//  orangeViewController.swift
//  Segue
//
//  Created by students on 2021/3/19.
//

import UIKit

class orangeViewController: UIViewController {
    
    var message: String?
    
    @IBOutlet weak var textLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        textLabel.text = message
        message = textLabel.text
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
