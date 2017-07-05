//
//  ViewController.swift
//  QwixxScorecard
//
//  Created by Kyle Brown on 7/5/17.
//  Copyright © 2017 Kyle Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var red2: UIButton!
    @IBOutlet var finalScore: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func red2Pushed(_ sender: Any) {
        red2.backgroundColor = UIColor.green
        finalScore.text = "2 Pushed!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

