//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Kevin Wang on 5/13/17.
//  Copyright © 2017 Kevin Wang. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var DefinitionLabel: UILabel!

    var emoji = Emoji()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    emojiLabel.text = emoji.stringEmoji
      birthYearLabel.text = "BirthYear: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        DefinitionLabel.text = emoji.definition
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
