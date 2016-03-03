//
//  DevilWizard.swift
//  rpg-oop
//
//  Created by Otto on 3/3/16.
//  Copyright © 2016 Otto. All rights reserved.
//

import Foundation


class DevilWizard: Enemy{

    override var loot: [String]{
        return ["Magic Staff", "Dark Amulet","Salted Pork"]
    }
    
    override var type:String{
        return "Devil Wizard"
    }
}