//
//  PClass.swift
//  Dun-Gen
//
//  Created by Brian Terry on 11/15/18.
//  Copyright © 2018 Brian Terry. All rights reserved.
//

import Foundation
class PClass{
    // Constant Variables
    let FIGHTER = 1
    // Type Variables
    var hd: Int
    var skills = 2
    var bab: Int
    var fort: Int
    var ref: Int
    var will: Int
    
    // init takes a level and a int informing it of the class that is making the request to level up.
    init(level: Int, classFrom: Int){
        if(classFrom == FIGHTER){
            hd = 10
            switch level{
            case 1:
                bab = 1
                fort = 3
                ref = 0
                will = 0
                // he also gets a bonus feat... but we can get to that later
            case 2:
                bab = 2
                fort = 3
                ref = 0
                will = 0
            case 3:
                bab = 3
                fort = 3
                ref = 1
                will = 1
            default:
                bab = 0
                fort = 0
                ref = 0
                will = 0
                print("error during level")
                
            }
        }else{
        hd = 0
        bab = 0
        fort = 0
        ref = 0
        will = 0
        print("error during level")
        }
    }
    
}
