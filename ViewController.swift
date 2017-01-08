//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Tazeen Khan on 08/01/17.
//  Copyright © 2017 Tazeen Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activeplayer = 1 //cross
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    var winningCombinations = [[0, 1, 2], [3, 4 ,5], [6, 7, 8], [0, 3, 6], [1, 4 ,7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    var gameIsActive = true
    
    @IBAction func action(sender: AnyObject)
    {
        if (gameState[sender.tag-1] == 0 && gameIsActive == true)
        {
            gameState[sender.tag-1] = activeplayer
        
            if(activeplayer == 1)
            {
                sender.setImage(UIImage(named: "Cross.png"), forState: UIControlState())
                activeplayer = 2
            }
            else
            {
                sender.setImage(UIImage (named: "Nought.png"), forState: UIControlState())
                activeplayer = 1
            }
        }
    
        for combination in winningCombinations
        {
            if (gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]])
            {
                gameIsActive = false
                if (gameState[combination[0]] == 1)
                {
                    //cross has won
                }
                else
                {
                    //nought has won
                }
            }
        
        }
        
    
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

