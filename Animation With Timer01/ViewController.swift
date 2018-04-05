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
    @IBOutlet weak var imgV: UIImageView!
    
    @IBOutlet weak var mylbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgV.image = UIImage(named:"frame1.png")
        mylbl.text = String(count)
    }
    @IBAction func btS(_ sender: Any) {
        myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Animation), userInfo: nil, repeats: true)
    }
    
    @IBAction func btT(_ sender: Any) {
        myTimer.invalidate()
    }
    @objc func Animation() {
        if count == 5 {
            count = 1
        } else {
            count = count + 1
        }
        imgV.image = UIImage(named: "frame\(count).png")
        mylbl.text = String(count)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

