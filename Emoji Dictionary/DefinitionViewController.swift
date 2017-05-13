//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Kevin Wang on 5/13/17.
//  Copyright © 2017 Kevin Wang. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var DefinitionLabel: UILabel!
    
var emoji = "No emoji"
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    emojiLabel.text = emoji
        
        if emoji == "👽" {
            DefinitionLabel.text = "Alien"
        }


    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
