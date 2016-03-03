//
//  ViewController.swift
//  rpg-oop
//
//  Created by Otto on 3/3/16.
//  Copyright © 2016 Otto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var playerHpLbl: UILabel!
    @IBOutlet weak var chestBtn: UIButton!
    @IBOutlet weak var enemyHpLbl: UILabel!
    @IBOutlet weak var enemySprite: UIImageView!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player(name: "Stinx", hp: 110, attackPwr: 20)
        playerHpLbl.text = "\(player.hp) HP"
        
        generateRandomEnemy()
        
        
        
    }

    
 
    func generateRandomEnemy(){
        let rand = Int(arc4random_uniform(2))
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
            
        }else{
            enemy = DevilWizard(startingHp: 60, attackPwr:  15)
        }
        enemyHpLbl.text = "\(enemy.hp) HP"
        enemySprite.hidden = false;
    }
    
    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true;
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }
    @IBAction func attackedTapped(sender: AnyObject) {
        if enemy.attemptAttack(player.attackPwr){
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            enemyHpLbl.text = "\(enemy.hp) HP"
        }else{
            printLbl.text = "Attacked was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot(){
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false;
        }
        
        if !enemy.isAlive{
            enemyHpLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemySprite.hidden = true
        }
        
    }
    

}

