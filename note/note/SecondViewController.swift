//
//  SecondViewController.swift
//  note
//
//  Created by students on 2021/3/26.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        var items : [String]
        
        let itemObj =  UserDefaults.standard.object(forKey: "UserData")
        
        if textField.text != "" {
            
            if let tempObj = itemObj as? [String]{
                // 已經有資料庫，用加的
                // ! 強制存在 ？ 假設存在
                items = tempObj
                
                items.append(textField.text!)
                
                print(items)
            }else{//資料庫尚未建立
                
                items = [textField.text!]
            }
            
            UserDefaults.standard.setValue(items, forKey: "UserData")
            
            textField.text = ""
        }
        
     
    }
    
    // 點textField外就讓鍵盤消失
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
