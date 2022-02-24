//
//  ViewController.swift
//  screenAnimation
//
//  Created by barrystone on 2021/4/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    
    @IBAction func rotationButton(_ sender: UIButton) {
        UIView.animate(withDuration: 1){
            
            // not chage outlet yet, changing
            if self.darkView.transform == CGAffineTransform.identity {
                self.darkView.transform = CGAffineTransform(scaleX: 50, y: 50)
                
                self.titleLabel.transform = CGAffineTransform(translationX: 0, y: -400)
                self.loginLabel.transform = CGAffineTransform(translationX: 0, y: -400)
                self.loginView.transform = CGAffineTransform(translationX: 0, y: -400)
                
                self.buttonOutlet.transform = CGAffineTransform(rotationAngle: .pi)
                
            }else{
//                outlet has change, back to origin
                self.darkView.transform =  CGAffineTransform.identity
                
                self.titleLabel.transform = CGAffineTransform(translationX: 0, y: 400)
                self.titleLabel.transform = CGAffineTransform.identity
                self.loginLabel.transform = CGAffineTransform.identity
                self.loginView.transform = CGAffineTransform.identity
                
                self.buttonOutlet.transform = CGAffineTransform.identity
            }
        }
    }
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBOutlet weak var darkView: UIView!
    @IBOutlet weak var loginView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // let darkView to circle
        darkView.layer.cornerRadius = darkView.frame.width/2
        darkView.mask?.clipsToBounds = true
    }
    
    
}

