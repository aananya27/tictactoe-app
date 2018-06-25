//
//  ViewController.swift
//  TicTacToe
//
//  Created by Aananya on 22/03/17.
//  Copyright © 2017 Aananya. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
    }
    
    var flag : Bool = true
    
    func putValue() -> String {
        var val : String
        if flag == true {
            val = "X"
            flag = false
        } else {
            val = "O"
            flag = true
        }
        
      return val
    }

    
    
    @IBOutlet weak var TicTacLabel: UILabel!
    
   //MARK:
    @IBOutlet weak var action00: UIButton!
    @IBAction func a00(_ sender: Any) {
        action00.setTitle(putValue(), for: UIControlState.normal)
        checkWinner()
        checkWinner()
    }
    
    @IBOutlet weak var action01: UIButton!
    @IBAction func a01(_ sender: Any) {
         action01.setTitle(putValue(), for: UIControlState.normal)
        checkWinner()
        
        checkWinner()
        
    }
    
    
    @IBOutlet weak var action02: UIButton!
    @IBAction func a02(_ sender: Any) {
        action02.setTitle(putValue(), for: UIControlState.normal)
        checkWinner()
        
        checkWinner()
    }
    
    
    @IBOutlet weak var action10: UIButton!
    @IBAction func a10(_ sender: Any) {
         action10.setTitle(putValue(), for: UIControlState.normal)
        checkWinner()
        
        checkWinner()
    }
    
    
    @IBOutlet weak var action11: UIButton!
    @IBAction func a11(_ sender: Any) {
       action11.setTitle(putValue(), for: UIControlState.normal)
        checkWinner()
        
        checkWinner()
    }
    
    
    @IBOutlet weak var action12: UIButton!
    @IBAction func a12(_ sender: Any) {
        action12.setTitle(putValue(), for: UIControlState.normal)
        checkWinner()
        
        checkWinner()
    }
    
    
    @IBOutlet weak var action20: UIButton!
    @IBAction func a20(_ sender: Any) {
        action20.setTitle(putValue(), for: UIControlState.normal)
        checkWinner()
        
        checkWinner()
    }
    
    
    @IBOutlet weak var action21: UIButton!
    @IBAction func a21(_ sender: Any) {
        action21.setTitle(putValue(), for: UIControlState.normal)
        checkWinner()
        checkWinner()
    }
    
    @IBOutlet weak var action22: UIButton!
    @IBAction func a22(_ sender: Any) {
        action22.setTitle(putValue(), for: UIControlState.normal)
        checkWinner()
        checkWinner()
    }
    
    
    
    
    
   // MARK: declaring the winner
    
    
    func showAlert () {
    let alertController = UIAlertController(title: "You won!", message: nil , preferredStyle: .alert)
     
    let okAction = UIAlertAction(title: "okay", style: .default, handler: dismissAlert )
        alertController.addAction(okAction)
        
    
    
    present(alertController , animated: true , completion: nil)
    }
    
    func dismissAlert (sender : UIAlertAction?) -> Void {
        action00.setTitle(" ", for: UIControlState.normal)
        action01.setTitle(" ", for: UIControlState.normal)
        action02.setTitle(" ", for: UIControlState.normal)
        action10.setTitle(" ", for: UIControlState.normal)
        action11.setTitle(" ", for: UIControlState.normal)
        action12.setTitle(" ", for: UIControlState.normal)
        action20.setTitle(" ", for: UIControlState.normal)
        action21.setTitle(" ", for: UIControlState.normal)
        action22.setTitle(" ", for: UIControlState.normal)
        flag = true
    }
    
    func showAtTie () {
        let defaultAlert = UIAlertController(title: "OOOHH" , message: "It's a TIE!!", preferredStyle: .alert)
        present(defaultAlert , animated: true , completion: nil)

    }
    func checkWinner (){
        //will check all 8 conditions
        //if condition is true
        //display alert for next game
        print("check")
        if       (action00.titleLabel?.text == "X" && action01.titleLabel?.text == "X" && action02.titleLabel?.text == "X" ) {
            showAlert()
            
        }else if (action10.titleLabel?.text == "X" && action11.titleLabel?.text == "X" && action12.titleLabel?.text == "X" ) {
            showAlert()
            
        }else if (action20.titleLabel?.text == "X" && action21.titleLabel?.text == "X" && action22.titleLabel?.text == "X" ) {
            showAlert()
            
        }else if (action10.titleLabel?.text == "X" && action10.titleLabel?.text == "X" && action20.titleLabel?.text == "X" ) {
            showAlert()
            
        }else if (action01.titleLabel?.text == "X" && action11.titleLabel?.text == "X" && action21.titleLabel?.text == "X" ) {
            showAlert()
            
        }else if (action02.titleLabel?.text == "X" && action12.titleLabel?.text == "X" && action22.titleLabel?.text == "X" ) {
            showAlert()
            
        }else if (action00.titleLabel?.text == "X" && action11.titleLabel?.text == "X" && action22.titleLabel?.text == "X" ) {
            showAlert()
            
        }else if (action02.titleLabel?.text == "X" && action11.titleLabel?.text == "X" && action20.titleLabel?.text == "X" ) {
            showAlert()
            
        }
        
        
        if       (action00.titleLabel?.text == "O" && action01.titleLabel?.text == "O" && action02.titleLabel?.text == "O" ) {
            showAlert()
            
        }else if (action10.titleLabel?.text == "O" && action11.titleLabel?.text == "O" && action12.titleLabel?.text == "O" ) {
            showAlert()
            
        }else if (action20.titleLabel?.text == "O" && action21.titleLabel?.text == "O" && action22.titleLabel?.text == "O" ) {
            showAlert()
            
        }else if (action10.titleLabel?.text == "O" && action10.titleLabel?.text == "O" && action20.titleLabel?.text == "O" ) {
            showAlert()
            
        }else if (action01.titleLabel?.text == "O" && action11.titleLabel?.text == "O" && action21.titleLabel?.text == "O" ) {
            showAlert()
            
        }else if (action02.titleLabel?.text == "O" && action12.titleLabel?.text == "O" && action22.titleLabel?.text == "O" ) {
            showAlert()
            
        }else if (action00.titleLabel?.text == "O" && action11.titleLabel?.text == "O" && action22.titleLabel?.text == "O" ) {
            showAlert()
            
        }else if (action02.titleLabel?.text == "O" && action11.titleLabel?.text == "O" && action20.titleLabel?.text == "O" ) {
            showAlert()
            
        }
    }
    
   
    @IBOutlet weak var newGameStarter: UIButton!
    @IBAction func newGame(_ sender: Any) {
        dismissAlert(sender: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


