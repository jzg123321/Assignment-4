//
//  ViewController.swift
//  A4
//
//  Created by Josh Guiang on 6/18/23.
//

import UIKit

class ViewController: UIViewController {

    var level : Int = 1
    
    var first = FirstLevel()
    var second = SecondLevel()
    var third = ThirdLevel()
    var fourth = FourthLevel()
    
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var button2Text: UIButton!
    @IBOutlet weak var button1Text: UIButton!
    
    @IBAction func button1(_ sender: UIButton) {
        if(level == 1) {
            display.text = second.WlkWhite()
            button1Text.setTitle("", for: .normal)
            button2Text.setTitle("", for: .normal)
            level += 99
        }
        else if (level == 2){
            display.text = third.Opt()
            button1Text.setTitle("Walk towards the sounds", for: .normal)
            button2Text.setTitle("Walk the opposite direction", for: .normal)
            level += 1
        }
        else if (level == 3){
            display.text = fourth.Fst()
            button1Text.setTitle("", for: .normal)
            button2Text.setTitle("", for: .normal)
            level += 99
        }
    }
    
    @IBAction func button2(_ sender: UIButton) {
        if(level == 1) {
            display.text = second.WlkRed()
            button1Text.setTitle("Leave the flare and walk into the darkness of the forest", for: .normal)
            button2Text.setTitle("Take the flare with you", for: .normal)
            level += 1
        }
        else if (level == 2){
            display.text = third.Choice()
            button1Text.setTitle("", for: .normal)
            button2Text.setTitle("", for: .normal)
            level += 99
        }
        else if (level == 3){
            display.text = fourth.Snd()
            button1Text.setTitle("", for: .normal)
            button2Text.setTitle("", for: .normal)
            level += 99
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        display.text = first.Start()
        button1Text.setTitle("Walk Towards White Light", for: .normal)
        button2Text.setTitle("Walk Towards Red Light", for: .normal)
        
    }
}

class FirstLevel {
    func Start() -> String{
        return "You Are Lost In A Pitch Black Forest In The Middle of The Night"
    }
}

class SecondLevel {
    func WlkWhite() -> String{
        return "The Light leads you to a cliff you don't see in which you fall into"
    }
    func WlkRed() -> String{
        return "The Light leads you to a lit flare. What do you do?"
    }
}

class ThirdLevel {
    func Opt() -> String{
        return "You Now Hear loud noises. What do you do?"
    }
    func Choice() -> String{
        return "The flare attracts bears and you are attacked"
    }
}

class FourthLevel {
    func Fst() -> String{
        return "You end up walking in deeper into the forest and you are lost forever "
    }
    func Snd() -> String{
        return "You find a village and you are saved!"
    }
}
