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

    @IBAction func action(sender: AnyObject)
    {
        if (gameState[sender.tag-1] == 0)
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

