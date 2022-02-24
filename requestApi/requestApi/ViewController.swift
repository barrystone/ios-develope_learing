//
//  ViewController.swift
//  requestApi
//
//  Created by barrystone on 2021/5/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myUrl = URL(string: "https://www.clipartkey.com/mpngs/m/55-558787_groot-png-groot-baby.png")
        
        let  myRequest = URLRequest(url: myUrl!)

        let myTask = URLSession.shared.dataTask (with: myRequest){( data , response , error) in
            if error != nil {
                print("error")
            }else {
                if let imageData = data {
                    self.imageView.image = UIImage(data: imageData)
                }
            }
        }
    }
    myTask.resume()
}

