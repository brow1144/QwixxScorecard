//
//  ViewController.swift
//  QwixxScorecard
//
//  Created by Kyle Brown on 7/5/17.
//  Copyright © 2017 Kyle Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var red2: MyButton!
    @IBOutlet var red3: MyButton!
    @IBOutlet var red4: MyButton!
    @IBOutlet var red5: MyButton!
    @IBOutlet var red6: MyButton!
    @IBOutlet var red7: MyButton!
    @IBOutlet var red8: MyButton!
    @IBOutlet var red9: MyButton!
    @IBOutlet var red10: MyButton!
    @IBOutlet var red11: MyButton!
    @IBOutlet var red12: MyButton!
    @IBOutlet var redLock: MyButton!
    
    
    var redsSelected = 0
    @IBOutlet var redTotal: UILabel!
    
    
    @IBOutlet var finalScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func createScore( number : Int?) -> String {
        let number = number
        if (number == 1) {
            return "1"
        } else if (number == 2) {
            return "3"
        }  else if (number == 3) {
            return "6"
        } else if (number == 4) {
            return "10"
        } else if (number == 5) {
            return "15"
        } else if (number == 6) {
            return "21"
        } else if (number == 7) {
            return "28"
        }  else if (number == 8) {
            return "36"
        } else if (number == 9) {
            return "45"
        } else if (number == 10) {
            return "55"
        } else if (number == 11) {
            return "66"
        } else if (number == 12) {
            return "78"
        }
        return "0"
    }

    
    @IBAction func red2Pushed(_ sender: Any) {
        if (red2.backgroundColor == UIColor.black) {
            red2.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 1
            redTotal.text = createScore(number: redsSelected)
        } else {
            red2.backgroundColor = UIColor.black
            redsSelected += 1
            redTotal.text = createScore(number: redsSelected)
        }
    }
    @IBAction func red3Pushed(_ sender: Any) {
        if (red3.backgroundColor == UIColor.black) {
            red3.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 1
            redTotal.text = createScore(number: redsSelected)
        } else {
            red3.backgroundColor = UIColor.black
            redsSelected += 1
            redTotal.text = createScore(number: redsSelected)
        }
    }
    @IBAction func red4Pushed(_ sender: Any) {
        if (red4.backgroundColor == UIColor.black) {
            red4.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 1
            redTotal.text = createScore(number: redsSelected)
        } else {
            red4.backgroundColor = UIColor.black
            redsSelected += 1
            redTotal.text = createScore(number: redsSelected)
        }
    }
    @IBAction func red5Pushed(_ sender: Any) {
        if (red5.backgroundColor == UIColor.black) {
            red5.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 1
            redTotal.text = createScore(number: redsSelected)
        } else {
            red5.backgroundColor = UIColor.black
            redsSelected += 1
            redTotal.text = createScore(number: redsSelected)
        }
    }
    @IBAction func red6Pushed(_ sender: Any) {
        if (red6.backgroundColor == UIColor.black) {
            red6.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 1
            redTotal.text = createScore(number: redsSelected)
        } else {
            red6.backgroundColor = UIColor.black
            redsSelected += 1
            redTotal.text = createScore(number: redsSelected)
        }
    }
    @IBAction func red7Pushed(_ sender: Any) {
        if (red7.backgroundColor == UIColor.black) {
            red7.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 1
            redTotal.text = createScore(number: redsSelected)
        } else {
            red7.backgroundColor = UIColor.black
            redsSelected += 1
            redTotal.text = createScore(number: redsSelected)
        }
    }
    @IBAction func red8Pushed(_ sender: Any) {
        if (red8.backgroundColor == UIColor.black) {
            red8.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 1
            redTotal.text = createScore(number: redsSelected)
        } else {
            red8.backgroundColor = UIColor.black
            redsSelected += 1
            redTotal.text = createScore(number: redsSelected)
        }
    }
    @IBAction func red9Pushed(_ sender: Any) {
        if (red9.backgroundColor == UIColor.black) {
            red9.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 1
            redTotal.text = createScore(number: redsSelected)
        } else {
            red9.backgroundColor = UIColor.black
            redsSelected += 1
            redTotal.text = createScore(number: redsSelected)
        }
    }
    @IBAction func red10Pushed(_ sender: Any) {
        if (red10.backgroundColor == UIColor.black) {
            red10.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 1
            redTotal.text = createScore(number: redsSelected)
        } else {
            red10.backgroundColor = UIColor.black
            redsSelected += 1
            redTotal.text = createScore(number: redsSelected)
        }
    }
    @IBAction func red11Pushed(_ sender: Any) {
        if (red11.backgroundColor == UIColor.black) {
            red11.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 1
            redTotal.text = createScore(number: redsSelected)
        } else {
            red11.backgroundColor = UIColor.black
            redsSelected += 1
            redTotal.text = createScore(number: redsSelected)
        }
    }
    @IBAction func red12Pushed(_ sender: Any) {
        if (red12.backgroundColor == UIColor.black) {
            red12.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redLock.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 2
            redTotal.text = createScore(number: redsSelected)
        } else {
            red12.backgroundColor = UIColor.black
            redLock.backgroundColor = UIColor.black
            redsSelected += 2
            redTotal.text = createScore(number: redsSelected)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

@IBDesignable class MyButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? 6 : 0
        //frame.size.height / 2
    }
}
