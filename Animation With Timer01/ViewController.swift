//
//  ViewController.swift
//  Animation With Timer01
//
//  Created by D7702_09 on 2018. 4. 5..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var count = 1
    var myTimer = Timer()
    var check = true
    var checkP = false
    @IBOutlet weak var imgV: UIImageView!
    
    @IBOutlet weak var mylbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgV.image = UIImage(named:"frame1.png")
        mylbl.text = String(count)
    }
    @IBAction func btS(_ sender: Any) {
        //버튼 하나로 스타트/스탑이된다
        if checkP == false{
            checkP = true
            //타이머 1초마다 계속됨
             myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Animation), userInfo: nil, repeats: true)
        }else {
            checkP = false
            myTimer.invalidate()
        }
    }
    
    @IBAction func btT(_ sender: Any) {
        myTimer.invalidate()
    }
    @objc func Animation() {
        //카운트가 5일때 1로 돌아가면서 타이머가 돌아감
    //  if count == 5{
    //      count = 1
    //  } else {
    //      count = count + 1
    //  }
        //카운트가1일땐 증가하다가 5를만나면 내려가면서 타이머가돌아감
        if count == 5 {
            check = false
        } else if count == 1 {
            check = true
        }
        if check == true {
            count = count + 1
        } else if check == false{
            count = count - 1
        }
        imgV.image = UIImage(named: "frame\(count).png")
        mylbl.text = String(count)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

