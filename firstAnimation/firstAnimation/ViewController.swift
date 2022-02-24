//
//  ViewController.swift
//  firstAnimation
//
//  Created by students on 2021/4/9.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var react: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        react.center.y = view.frame.height/2
        react.center.y = react.center.y-view.frame.height
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2){
//            self.react.center.y = self.react.center.y  - self.view.frame.height/2
            self.react.center.y = self.react.center.y + self.view.frame.height
        }
    }


}

