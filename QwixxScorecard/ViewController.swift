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
    
    var yellowsSelected = 0
    @IBOutlet var yellowTotal: UILabel!
    
    
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
    
    var greensSelected = 0
    @IBOutlet var greenTotal: UILabel!
    
    
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
    
    var bluesSelected = 0
    @IBOutlet var blueTotal: UILabel!
    
    
    @IBOutlet var penality1: MyButton!
    var penality1Bool: Bool = false
    @IBOutlet var penality2: MyButton!
    var penality2Bool: Bool = false
    @IBOutlet var penality3: MyButton!
    var penality3Bool: Bool = false
    @IBOutlet var penality4: MyButton!
    var penality4Bool: Bool = false
    
    
    var totalPenality = 0
    @IBOutlet var penalityScore: UILabel!
    
    
    @IBOutlet var finalScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    func handleRed(tag : Int?, button : MyButton) {
        if (tag == 121) {
            if (button.backgroundColor == UIColor.black) {
                button.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
                redLock.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
                redsSelected -= 2
                redTotal.text = createScore(number: redsSelected)
                finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
            } else {
                button.backgroundColor = UIColor.black
                redLock.backgroundColor = UIColor.black
                redsSelected += 2
                redTotal.text = createScore(number: redsSelected)
                finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
            }
        } else {
            if (button.backgroundColor == UIColor.black) {
                button.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
                redsSelected -= 1
                redTotal.text = createScore(number: redsSelected)
                finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
            } else {
                button.backgroundColor = UIColor.black
                redsSelected += 1
                redTotal.text = createScore(number: redsSelected)
                finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
            }
        }
    }
    
    func handleYellow(tag : Int?, button : MyButton) {
        if (tag == 122) {
            if (button.backgroundColor == UIColor.black) {
                button.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
                yellowLock.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
                yellowsSelected -= 2
                yellowTotal.text = createScore(number: yellowsSelected)
                finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
            } else {
                button.backgroundColor = UIColor.black
                yellowLock.backgroundColor = UIColor.black
                yellowsSelected += 2
                yellowTotal.text = createScore(number: yellowsSelected)
                finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
            }
        } else {
            if (button.backgroundColor == UIColor.black) {
                button.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
                yellowsSelected -= 1
                yellowTotal.text = createScore(number: yellowsSelected)
                finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
            } else {
                button.backgroundColor = UIColor.black
                yellowsSelected += 1
                yellowTotal.text = createScore(number: yellowsSelected)
                finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
            }
        }
    }
    
    @IBAction func buttonPressed(_ sender: MyButton) {
        if (sender.tag % 10 == 1) {
            handleRed(tag: sender.tag, button: sender)
        } else if (sender.tag % 10 == 2) {
            handleYellow(tag: sender.tag, button: sender)
        }
    }
    
    @IBAction func penality1Pushed(_ sender: Any) {
        if (penality1Bool) {
            penality1.setTitle("",for: .normal)
            totalPenality -= 5
            penalityScore.text = String(describing: totalPenality)
            penality1Bool = false
            //finalScore.text = String(Int(finalScore.text!)! - totalPenality)
            finalScore.text = String(Int(finalScore.text!)! + 5)
        } else {
            penality1.setTitle("X",for: .normal)
            penality1.setTitleColor(UIColor.red, for: .normal)
            totalPenality += 5
            penalityScore.text = String(describing: totalPenality)
            penality1Bool = true
            finalScore.text = String(Int(finalScore.text!)! - 5)
        }
    }
    
    @IBAction func penality2Pushed(_ sender: Any) {
        if (penality2Bool) {
            penality2.setTitle("",for: .normal)
            totalPenality -= 5
            penalityScore.text = String(describing: totalPenality)
            penality2Bool = false
            //finalScore.text = String(Int(finalScore.text!)! - totalPenality)
            finalScore.text = String(Int(finalScore.text!)! + 5)
        } else {
            penality2.setTitle("X",for: .normal)
            penality2.setTitleColor(UIColor.red, for: .normal)
            totalPenality += 5
            penalityScore.text = String(describing: totalPenality)
            penality2Bool = true
            finalScore.text = String(Int(finalScore.text!)! - 5)
        }
    }
    @IBAction func penality3Pushed(_ sender: Any) {
        if (penality3Bool) {
            penality3.setTitle("",for: .normal)
            totalPenality -= 5
            penalityScore.text = String(describing: totalPenality)
            penality3Bool = false
            //finalScore.text = String(Int(finalScore.text!)! - totalPenality)
            finalScore.text = String(Int(finalScore.text!)! + 5)
        } else {
            penality3.setTitle("X",for: .normal)
            penality3.setTitleColor(UIColor.red, for: .normal)
            totalPenality += 5
            penalityScore.text = String(describing: totalPenality)
            penality3Bool = true
            finalScore.text = String(Int(finalScore.text!)! - 5)
        }
    }
    @IBAction func penality4Pushed(_ sender: Any) {
        if (penality4Bool) {
            penality4.setTitle("",for: .normal)
            totalPenality -= 5
            penalityScore.text = String(describing: totalPenality)
            penality4Bool = false
            //finalScore.text = String(Int(finalScore.text!)! - totalPenality)
            finalScore.text = String(Int(finalScore.text!)! + 5)
        } else {
            penality4.setTitle("X",for: .normal)
            penality4.setTitleColor(UIColor.red, for: .normal)
            totalPenality += 5
            penalityScore.text = String(describing: totalPenality)
            penality4Bool = true
            finalScore.text = String(Int(finalScore.text!)! - 5)
        }
    }
    
//    @IBAction func red2Pushed(_ sender: Any) {
//        if (red2.backgroundColor == UIColor.black) {
//            red2.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redsSelected -= 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            red2.backgroundColor = UIColor.black
//            redsSelected += 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func red3Pushed(_ sender: Any) {
//        if (red3.backgroundColor == UIColor.black) {
//            red3.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redsSelected -= 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            red3.backgroundColor = UIColor.black
//            redsSelected += 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func red4Pushed(_ sender: Any) {
//        if (red4.backgroundColor == UIColor.black) {
//            red4.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redsSelected -= 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            red4.backgroundColor = UIColor.black
//            redsSelected += 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func red5Pushed(_ sender: Any) {
//        if (red5.backgroundColor == UIColor.black) {
//            red5.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redsSelected -= 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            red5.backgroundColor = UIColor.black
//            redsSelected += 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func red6Pushed(_ sender: Any) {
//        if (red6.backgroundColor == UIColor.black) {
//            red6.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redsSelected -= 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            red6.backgroundColor = UIColor.black
//            redsSelected += 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func red7Pushed(_ sender: Any) {
//        if (red7.backgroundColor == UIColor.black) {
//            red7.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redsSelected -= 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            red7.backgroundColor = UIColor.black
//            redsSelected += 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func red8Pushed(_ sender: Any) {
//        if (red8.backgroundColor == UIColor.black) {
//            red8.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redsSelected -= 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            red8.backgroundColor = UIColor.black
//            redsSelected += 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func red9Pushed(_ sender: Any) {
//        if (red9.backgroundColor == UIColor.black) {
//            red9.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redsSelected -= 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            red9.backgroundColor = UIColor.black
//            redsSelected += 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func red10Pushed(_ sender: Any) {
//        if (red10.backgroundColor == UIColor.black) {
//            red10.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redsSelected -= 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            red10.backgroundColor = UIColor.black
//            redsSelected += 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func red11Pushed(_ sender: Any) {
//        if (red11.backgroundColor == UIColor.black) {
//            red11.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redsSelected -= 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            red11.backgroundColor = UIColor.black
//            redsSelected += 1
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func red12Pushed(_ sender: Any) {
//        if (red12.backgroundColor == UIColor.black) {
//            red12.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redLock.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1)
//            redsSelected -= 2
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            red12.backgroundColor = UIColor.black
//            redLock.backgroundColor = UIColor.black
//            redsSelected += 2
//            redTotal.text = createScore(number: redsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
    
    
    
    
    
//    @IBAction func yellow2Pushed(_ sender: Any) {
//        if (yellow2.backgroundColor == UIColor.black) {
//            yellow2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowsSelected -= 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            yellow2.backgroundColor = UIColor.black
//            yellowsSelected += 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func yellow3Pushed(_ sender: Any) {
//        if (yellow3.backgroundColor == UIColor.black) {
//            yellow3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowsSelected -= 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            yellow3.backgroundColor = UIColor.black
//            yellowsSelected += 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func yellow4Pushed(_ sender: Any) {
//        if (yellow4.backgroundColor == UIColor.black) {
//            yellow4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowsSelected -= 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            yellow4.backgroundColor = UIColor.black
//            yellowsSelected += 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func yellow5Pushed(_ sender: Any) {
//        if (yellow5.backgroundColor == UIColor.black) {
//            yellow5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowsSelected -= 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            yellow5.backgroundColor = UIColor.black
//            yellowsSelected += 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func yellow6Pushed(_ sender: Any) {
//        if (yellow6.backgroundColor == UIColor.black) {
//            yellow6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowsSelected -= 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            yellow6.backgroundColor = UIColor.black
//            yellowsSelected += 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func yellow7Pushed(_ sender: Any) {
//        if (yellow7.backgroundColor == UIColor.black) {
//            yellow7.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowsSelected -= 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            yellow7.backgroundColor = UIColor.black
//            yellowsSelected += 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func yellow8Pushed(_ sender: Any) {
//        if (yellow8.backgroundColor == UIColor.black) {
//            yellow8.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowsSelected -= 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            yellow8.backgroundColor = UIColor.black
//            yellowsSelected += 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func yelow9Pushed(_ sender: Any) {
//        if (yellow9.backgroundColor == UIColor.black) {
//            yellow9.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowsSelected -= 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            yellow9.backgroundColor = UIColor.black
//            yellowsSelected += 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func yellow10Pushed(_ sender: Any) {
//        if (yellow10.backgroundColor == UIColor.black) {
//            yellow10.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowsSelected -= 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            yellow10.backgroundColor = UIColor.black
//            yellowsSelected += 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func yellow11Pushed(_ sender: Any) {
//        if (yellow11.backgroundColor == UIColor.black) {
//            yellow11.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowsSelected -= 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            yellow11.backgroundColor = UIColor.black
//            yellowsSelected += 1
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//    }
//    @IBAction func yellow12Pushed(_ sender: Any) {
//        if (yellow12.backgroundColor == UIColor.black) {
//            yellow12.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowLock.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 102/255, alpha: 1)
//            yellowsSelected -= 2
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        } else {
//            yellow12.backgroundColor = UIColor.black
//            yellowLock.backgroundColor = UIColor.black
//            yellowsSelected += 2
//            yellowTotal.text = createScore(number: yellowsSelected)
//            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
//        }
//        
//    }
//    
    
    
    
    @IBAction func green12Pushed(_ sender: Any) {
        if (green12.backgroundColor == UIColor.black) {
            green12.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            green12.backgroundColor = UIColor.black
            greensSelected += 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func green11Pushed(_ sender: Any) {
        if (green11.backgroundColor == UIColor.black) {
            green11.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            green11.backgroundColor = UIColor.black
            greensSelected += 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func green10Pushed(_ sender: Any) {
        if (green10.backgroundColor == UIColor.black) {
            green10.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            green10.backgroundColor = UIColor.black
            greensSelected += 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func green9Pushed(_ sender: Any) {
        if (green9.backgroundColor == UIColor.black) {
            green9.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            green9.backgroundColor = UIColor.black
            greensSelected += 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func green8Pushed(_ sender: Any) {
        if (green8.backgroundColor == UIColor.black) {
            green8.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            green8.backgroundColor = UIColor.black
            greensSelected += 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func green7Pushed(_ sender: Any) {
        if (green7.backgroundColor == UIColor.black) {
            green7.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            green7.backgroundColor = UIColor.black
            greensSelected += 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func green6Pushed(_ sender: Any) {
        if (green6.backgroundColor == UIColor.black) {
            green6.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            green6.backgroundColor = UIColor.black
            greensSelected += 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func green5Pushed(_ sender: Any) {
        if (green5.backgroundColor == UIColor.black) {
            green5.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            green5.backgroundColor = UIColor.black
            greensSelected += 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func green4Pushed(_ sender: Any) {
        if (green4.backgroundColor == UIColor.black) {
            green4.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            green4.backgroundColor = UIColor.black
            greensSelected += 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func green3Pushed(_ sender: Any) {
        if (green3.backgroundColor == UIColor.black) {
            green3.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            green3.backgroundColor = UIColor.black
            greensSelected += 1
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func green2Pushed(_ sender: Any) {
        if (green2.backgroundColor == UIColor.black) {
            green2.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greenLock.backgroundColor = UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1)
            greensSelected -= 2
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            green2.backgroundColor = UIColor.black
            greenLock.backgroundColor = UIColor.black
            greensSelected += 2
            greenTotal.text = createScore(number: greensSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    
    
    
    @IBAction func blue12Pushed(_ sender: Any) {
        if (blue12.backgroundColor == UIColor.black) {
            blue12.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            blue12.backgroundColor = UIColor.black
            bluesSelected += 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func blue11Pushed(_ sender: Any) {
        if (blue11.backgroundColor == UIColor.black) {
            blue11.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            blue11.backgroundColor = UIColor.black
            bluesSelected += 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func blue10Pushed(_ sender: Any) {
        if (blue10.backgroundColor == UIColor.black) {
            blue10.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            blue10.backgroundColor = UIColor.black
            bluesSelected += 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
        
    }
    @IBAction func blue9Pushed(_ sender: Any) {
        if (blue9.backgroundColor == UIColor.black) {
            blue9.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            blue9.backgroundColor = UIColor.black
            bluesSelected += 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func blue8Pushed(_ sender: Any) {
        if (blue8.backgroundColor == UIColor.black) {
            blue8.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            blue8.backgroundColor = UIColor.black
            bluesSelected += 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func blue7Pushed(_ sender: Any) {
        if (blue7.backgroundColor == UIColor.black) {
            blue7.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            blue7.backgroundColor = UIColor.black
            bluesSelected += 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func blue6Pushed(_ sender: Any) {
        if (blue6.backgroundColor == UIColor.black) {
            blue6.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            blue6.backgroundColor = UIColor.black
            bluesSelected += 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func blue5Pushed(_ sender: Any) {
        if (blue5.backgroundColor == UIColor.black) {
            blue5.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            blue5.backgroundColor = UIColor.black
            bluesSelected += 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func blue4Pushed(_ sender: Any) {
        if (blue4.backgroundColor == UIColor.black) {
            blue4.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            blue4.backgroundColor = UIColor.black
            bluesSelected += 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func blue3Pushed(_ sender: Any) {
        if (blue3.backgroundColor == UIColor.black) {
            blue3.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            blue3.backgroundColor = UIColor.black
            bluesSelected += 1
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        }
    }
    @IBAction func blue2Pushed(_ sender: Any) {
        if (blue2.backgroundColor == UIColor.black) {
            blue2.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            blueLock.backgroundColor = UIColor(red: 102/255, green: 102/255, blue: 255/255, alpha: 1)
            bluesSelected -= 2
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
        } else {
            blue2.backgroundColor = UIColor.black
            blueLock.backgroundColor = UIColor.black
            bluesSelected += 2
            blueTotal.text = createScore(number: bluesSelected)
            finalScore.text = String(Int(redTotal.text!)! + Int(yellowTotal.text!)! + Int(greenTotal.text!)! + Int(blueTotal.text!)!)
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
