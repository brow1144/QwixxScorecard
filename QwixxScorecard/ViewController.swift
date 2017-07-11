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
    
    @IBOutlet var yellow2: MyButton!
    @IBOutlet var yellow3: MyButton!
    @IBOutlet var yellow4: MyButton!
    @IBOutlet var yellow5: MyButton!
    @IBOutlet var yellow6: MyButton!
    @IBOutlet var yellow7: MyButton!
    @IBOutlet var yellow8: MyButton!
    @IBOutlet var yellow9: MyButton!
    @IBOutlet var yellow10: MyButton!
    @IBOutlet var yellow11: MyButton!
    @IBOutlet var yellow12: MyButton!
    @IBOutlet var yellowLock: MyButton!
    
    @IBOutlet var green12: MyButton!
    @IBOutlet var green11: MyButton!
    @IBOutlet var green10: MyButton!
    @IBOutlet var green9: MyButton!
    @IBOutlet var green8: MyButton!
    @IBOutlet var green7: MyButton!
    @IBOutlet var green6: MyButton!
    @IBOutlet var green5: MyButton!
    @IBOutlet var green4: MyButton!
    @IBOutlet var green3: MyButton!
    @IBOutlet var green2: MyButton!
    @IBOutlet var greenLock: MyButton!
    
    @IBOutlet var blue12: MyButton!
    @IBOutlet var blue11: MyButton!
    @IBOutlet var blue10: MyButton!
    @IBOutlet var blue9: MyButton!
    @IBOutlet var blue8: MyButton!
    @IBOutlet var blue7: MyButton!
    @IBOutlet var blue6: MyButton!
    @IBOutlet var blue5: MyButton!
    @IBOutlet var blue4: MyButton!
    @IBOutlet var blue3: MyButton!
    @IBOutlet var blue2: MyButton!
    @IBOutlet var blueLock: MyButton!
    
    @IBOutlet var penality1: MyButton!
    @IBOutlet var penality2: MyButton!
    @IBOutlet var penality3: MyButton!
    @IBOutlet var penality4: MyButton!
    
    var redsSelected = 0
    @IBOutlet var redTotal: UILabel!

    var yellowsSelected = 0
    @IBOutlet var yellowTotal: UILabel!
    
    var greensSelected = 0
    @IBOutlet var greenTotal: UILabel!
    
    var bluesSelected = 0
    @IBOutlet var blueTotal: UILabel!
    
    var totalPenality = 0
    @IBOutlet var penalityScore: UILabel!
    
    
    @IBOutlet var finalScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        penality1.tag = 0
        penality2.tag = 0
        penality3.tag = 0
        penality4.tag = 0
        
        red2.tag = 21
        red3.tag = 31
        red4.tag = 41
        red5.tag = 51
        red6.tag = 61
        red7.tag = 71
        red8.tag = 81
        red9.tag = 91
        red10.tag = 101
        red11.tag = 111
        red12.tag = 121
        redLock.tag = 991
        
        yellow2.tag = 22
        yellow3.tag = 32
        yellow4.tag = 42
        yellow5.tag = 52
        yellow6.tag = 62
        yellow7.tag = 72
        yellow8.tag = 82
        yellow9.tag = 92
        yellow10.tag = 102
        yellow11.tag = 112
        yellow12.tag = 122
        yellowLock.tag = 992

        green2.tag = 23
        green3.tag = 33
        green4.tag = 43
        green5.tag = 53
        green6.tag = 63
        green7.tag = 73
        green8.tag = 83
        green9.tag = 93
        green10.tag = 103
        green11.tag = 113
        green12.tag = 123
        greenLock.tag = 993
        
        blue2.tag = 24
        blue3.tag = 34
        blue4.tag = 44
        blue5.tag = 54
        blue6.tag = 64
        blue7.tag = 74
        blue8.tag = 84
        blue9.tag = 94
        blue10.tag = 104
        blue11.tag = 114
        blue12.tag = 124
        blueLock.tag = 994
    }
    
    func createScore(number: Int?) -> String {
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
    
    func calculateTotal() {
        finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)! - Int(penalityScore.text!)!)
    }
    
    func handleRed(tag : Int?, button : MyButton) {
        if (button.backgroundColor == UIColor.black) {
            button.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            redsSelected -= 1
            if (tag == 121) {
                redLock.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
                redsSelected -= 1
            }
            redTotal.text = createScore(number: redsSelected)
            calculateTotal()
        } else {
            button.backgroundColor = UIColor.black
            redsSelected += 1
            if (tag == 121) {
                redLock.backgroundColor = UIColor.black
                redsSelected += 1
            }
            redTotal.text = createScore(number: redsSelected)
            calculateTotal()
        }
    }
    
    func handleYellow(tag : Int?, button : MyButton) {
        if (button.backgroundColor == UIColor.black) {
            button.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
            yellowsSelected -= 1
            if (tag == 122) {
                yellowLock.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
                yellowsSelected -= 1
            }
            yellowTotal.text = createScore(number: yellowsSelected)
            calculateTotal()
        } else {
            button.backgroundColor = UIColor.black
            yellowsSelected += 1
            if (tag == 122) {
                yellowLock.backgroundColor = UIColor.black
                yellowsSelected += 1
            }
            yellowTotal.text = createScore(number: yellowsSelected)
            calculateTotal()
        }
    }
    
    func handleGreen(tag: Int?, button: MyButton) {
        if (button.backgroundColor == UIColor.black) {
            button.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 1
            if (tag == 23) {
                greenLock.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
                greensSelected -= 1
            }
            greenTotal.text = createScore(number: greensSelected)
            calculateTotal()
        } else {
            button.backgroundColor = UIColor.black
            greensSelected += 1
            if (tag == 23) {
                greenLock.backgroundColor = UIColor.black
                greensSelected += 1
            }
            greenTotal.text = createScore(number: greensSelected)
            calculateTotal()
        }
    }
    
    func handleBlue(tag: Int?, button: MyButton) {
        if (button.backgroundColor == UIColor.black) {
            button.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 1
            if (tag == 24) {
                blueLock.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
                bluesSelected -= 1
            }
            blueTotal.text = createScore(number: bluesSelected)
            calculateTotal()
        } else {
            button.backgroundColor = UIColor.black
            bluesSelected += 1
            if (tag == 24) {
                blueLock.backgroundColor = UIColor.black
                bluesSelected += 1
            }
            blueTotal.text = createScore(number: bluesSelected)
            calculateTotal()
        }
    }
    
    @IBAction func buttonPressed(_ sender: MyButton) {
        if (sender.tag % 10 == 1) {
            handleRed(tag: sender.tag, button: sender)
        } else if (sender.tag % 10 == 2) {
            handleYellow(tag: sender.tag, button: sender)
        } else if (sender.tag % 10 == 3) {
            handleGreen(tag: sender.tag, button: sender)
        } else if (sender.tag % 10 == 4) {
            handleBlue(tag: sender.tag, button: sender)
        }
    }
    
    @IBAction func handlePenality(_ sender: MyButton) {
        if (sender.tag % 10 == 1) {
            sender.setTitle("",for: .normal)
            totalPenality -= 5
            penalityScore.text = String(describing: totalPenality)
            sender.tag = 0
            finalScore.text = String(Int(finalScore.text!)! + 5)
        } else {
            sender.setTitle("X",for: .normal)
            sender.setTitleColor(UIColor.red, for: .normal)
            totalPenality += 5
            penalityScore.text = String(describing: totalPenality)
            sender.tag = 1
            finalScore.text = String(Int(finalScore.text!)! - 5)
        }
    }
    
    func lockRed(boolean: Bool) {
        red2.isEnabled = boolean
        red3.isEnabled = boolean
        red4.isEnabled = boolean
        red5.isEnabled = boolean
        red6.isEnabled = boolean
        red7.isEnabled = boolean
        red8.isEnabled = boolean
        red9.isEnabled = boolean
        red10.isEnabled = boolean
        red11.isEnabled = boolean
        red12.isEnabled = boolean
    }
    
    func lockYellow(boolean: Bool) {
        yellow2.isEnabled = boolean
        yellow3.isEnabled = boolean
        yellow4.isEnabled = boolean
        yellow5.isEnabled = boolean
        yellow6.isEnabled = boolean
        yellow7.isEnabled = boolean
        yellow8.isEnabled = boolean
        yellow9.isEnabled = boolean
        yellow10.isEnabled = boolean
        yellow11.isEnabled = boolean
        yellow12.isEnabled = boolean
    }
    
    func lockGreen(boolean: Bool) {
        green2.isEnabled = boolean
        green3.isEnabled = boolean
        green4.isEnabled = boolean
        green5.isEnabled = boolean
        green6.isEnabled = boolean
        green7.isEnabled = boolean
        green8.isEnabled = boolean
        green9.isEnabled = boolean
        green10.isEnabled = boolean
        green11.isEnabled = boolean
        green12.isEnabled = boolean
    }
    
    func lockBlue(boolean: Bool) {
        blue2.isEnabled = boolean
        blue3.isEnabled = boolean
        blue4.isEnabled = boolean
        blue5.isEnabled = boolean
        blue6.isEnabled = boolean
        blue7.isEnabled = boolean
        blue8.isEnabled = boolean
        blue9.isEnabled = boolean
        blue10.isEnabled = boolean
        blue11.isEnabled = boolean
        blue12.isEnabled = boolean
    }
    
    @IBAction func handleLock(_ sender: MyButton) {
        if (sender.tag % 10 == 1) {
            if (red2.isEnabled) {
                lockRed(boolean: false)
                redLock.backgroundColor = UIColor.black
            } else {
                lockRed(boolean: true)
                redLock.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
            }
        } else if (sender.tag % 10 == 2) {
            if (yellow2.isEnabled) {
                lockYellow(boolean: false)
                yellowLock.backgroundColor = UIColor.black
            } else {
                lockYellow(boolean: true)
                yellowLock.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
            }
        } else if (sender.tag % 10 == 3) {
            if (green2.isEnabled) {
                lockGreen(boolean: false)
                greenLock.backgroundColor = UIColor.black
                
            } else {
                lockGreen(boolean: true)
                greenLock.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            }
        } else if (sender.tag % 10 == 4) {
            if (blue2.isEnabled) {
                lockBlue(boolean: false)
                blueLock.backgroundColor = UIColor.black
            } else {
                lockBlue(boolean: true)
                blueLock.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            }
        }
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
    }
}
