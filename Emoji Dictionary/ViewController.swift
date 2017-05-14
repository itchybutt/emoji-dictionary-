//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Kevin Wang on 5/12/17.
//  Copyright © 2017 Kevin Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArry()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableview.deselectRow(at: indexPath, animated: true)
        
        let emoji = emojis[indexPath.row]
    performSegue(withIdentifier:  "moveSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
        DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😇"
        emoji1.birthYear =  2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with a Halo"
        
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear =  2010
        emoji2.category = "Smiley"
        emoji2.definition = "A smiley face with a sunglass"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😈"
        emoji3.birthYear =  2012
        emoji3.category = "Creature"
        emoji3.definition = "A Creature face demon"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😆"
        emoji4.birthYear =  2009
        emoji4.category = "Smiley"
        emoji4.definition = "A smiley face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👾"
        emoji5.birthYear =  2013
        emoji5.category = "Creature"
        emoji5.definition = "A smiley face demon creature"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "👽"
        emoji6.birthYear =  2015
        emoji6.category = "Smiley"
        emoji6.definition = "A Alien"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🤑"
        emoji7.birthYear =  2014
        emoji7.category = "Smiley"
        emoji7.definition = "A money emoji"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }

}

