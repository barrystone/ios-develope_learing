//
//  ViewController.swift
//  Navigation
//
//  Created by students on 2021/3/12.
//

import UIKit

class ViewController: UIViewController {

    var myTimer = Timer()
    var secondText: Int = 0

    
    var isStart = false
    
    
    @IBOutlet weak var smartTimer: UILabel!
    
    @IBOutlet weak var timeText: UILabel!

    
    
    
    @IBAction func startTimer(_ sender: UIBarButtonItem) {
        
      
        
        if !isStart {
            myTimer = Timer.scheduledTimer(timeInterval: 1, target:self,selector: #selector(processTimer), userInfo: nil, repeats:true)
            
            myTimer.fire()
            
            isStart = true
        }else{
            myTimer.invalidate()
            isStart = false
        }
    }
    
    //每一秒作用一次 作用目標為本身 作用的方式’processTimer‘
    @objc func processTimer(){
        secondText += 1
        var hourText:Int = 0
        var minText:Int = 0
        var showSecondText :Int = 0
        minText = secondText/60
        hourText = minText / 60
        var showMinText :Int = 0
        showMinText = minText % 60
        showSecondText = secondText%60
        
        if( hourText > 0 && minText > 0 ){
            
            if(showMinText<10 && showSecondText<10){
                timeText.text = String(hourText) + ":0" + String(showMinText) + ":0" + String(showSecondText)
            }else if(showMinText>10 && showSecondText<10){
                timeText.text = String(hourText) + ":" + String(showMinText) + ":0" + String(showSecondText)
            } else if(showMinText<10 && showSecondText>10){
                timeText.text = String(hourText) + ":0" + String(showMinText) + ":" + String(showSecondText)

            }else{
                timeText.text = String(hourText) + ":" + String(showMinText) + ":" + String(showSecondText)
            }
            
        }
        else if(hourText == 0 && minText > 0){

            if(showSecondText<10){
                timeText.text = String(minText) + ":0"+String(showSecondText)
            }else{
                timeText.text = String(minText) + ":"+String(showSecondText)
            }
           
        }
        else{
            timeText.text = ""+String(secondText)
        }
        
        
    }
    
    @IBAction func pauseTimer(_ sender: UIBarButtonItem) {
        myTimer.invalidate()
        isStart = false
    }
    
    
    @IBAction func resetTimer(_ sender: UIBarButtonItem) {
        myTimer.invalidate()
        isStart=false
        timeText.text = "0"
        secondText = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

