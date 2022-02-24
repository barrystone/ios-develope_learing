//
//  ViewController.swift
//  myRect
//
//  Created by students on 2021/3/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let square = UIView(frame: CGRect(x: view.frame.width/2-75, y: view.frame.height/2-75, width: 150, height: 150))
        
        square.backgroundColor = UIColor.green
        
        view.addSubview(square)
        
        let textF =  UITextField(frame: CGRect(x: 0, y: 0, width: square.frame.width, height: square.frame.height))
        
        textF.text = "Test"
        
        square.addSubview(textF)
        textF.textAlignment = .center
        textF.textColor = UIColor.orange;
    }
    
   

}

