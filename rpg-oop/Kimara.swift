//
//  Kimara.swift
//  rpg-oop
//
//  Created by Otto on 3/3/16.
//  Copyright © 2016 Otto. All rights reserved.
//

import Foundation

class Kimara: Enemy{
    
    let IMMUNE_MAX = 15
    
    override var loot: [String]{
        return ["Harden Lether", "Kimara Venom","Rare Trident"]
    }
    
    override var type: String{
        return "Kimara"
    }
    
    override func   attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= 15{
            return super.attemptAttack(attackPwr)
        }else{
            
            return false
        }
    
    }
    
}