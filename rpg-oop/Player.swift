//
//  Player.swift
//  rpg-oop
//
//  Created by Otto on 3/3/16.
//  Copyright © 2016 Otto. All rights reserved.
//

import Foundation


class Player: Character{
    
    private var _name = "Player"
    
    var name: String{
        get {
            return _name
        }
    }
    func addItemToInventory(item:String){
        _inventory.append(item)
    }
    
    private var _inventory =  [String]()
    
    var inventory: [String]{
        return _inventory
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int ){
        self.init(startingHp: hp, attackPwr: attackPwr)
        _name = name;
    }

}