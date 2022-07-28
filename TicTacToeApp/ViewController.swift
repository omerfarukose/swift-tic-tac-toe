//
//  ViewController.swift
//  TicTacToeApp
//
//  Created by Ömer Faruk KÖSE on 24.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum Turn {
        case Nought
        case Cross
    }

    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    
    var firstTurn = Turn.Cross
    var currentTrun = Turn.Cross
    
    var NOUGHT = "O"
    var CROSS = "X"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func boardTapAction(_ sender: UIButton) {
        addToBoard(sender)
    }
    
    func addToBoard(_ sender: UIButton){
        
        if(sender.title(for: .normal) == nil){
            
            if(currentTrun == Turn.Nought){
                sender.setTitle(NOUGHT, for: .normal)
                currentTrun = Turn.Cross
                turnLabel.text = CROSS
                
            }else if(currentTrun == Turn.Cross){
                sender.setTitle(CROSS, for: .normal)
                currentTrun = Turn.Nought
                turnLabel.text = NOUGHT
                
            }
            
        }
        
    }
    
}

