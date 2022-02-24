//
//  ViewController.swift
//  note
//
//  Created by students on 2021/3/26.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var items : [String] = []
    
    @IBOutlet weak var tabelView: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = UITableViewCell(style: .default, reuseIdentifier: "myCell")
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    

    //app有兩個view，只有切換（出現）就要從load程式碼
    override func viewDidAppear(_ animated: Bool) {
        let itemObj = UserDefaults.standard.object(forKey: "UserData")
        
        if let tempObj = itemObj as? [String]{
            items = tempObj
        }
        
        tabelView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            items.remove(at: indexPath.row)
            
            tableView.reloadData()
            
            UserDefaults.standard.setValue(items, forKey: "UserData")
        }
    }


}

