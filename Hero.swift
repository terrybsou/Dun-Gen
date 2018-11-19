//
//  Hero.swift
//  Dun-Gen
//
//  Created by Brian Terry on 11/15/18.
//  Copyright © 2018 Brian Terry. All rights reserved.
//
import UIKit
import Foundation
<<<<<<< HEAD
class Hero: NSObject, NSCoding{
    required convenience init?(coder aDecoder: NSCoder) {
        if let strengthBase = aDecoder.decodeInteger(forKey: "strBase") as?Int,
            let dexterityBase = aDecoder.decodeInteger(forKey: "dexBase")as? Int{
            print("loaded")
            print(strengthBase)
            print(dexterityBase)
            self.init(level: strengthBase, playerName: "player", characterName: "name")
        }else{
            return nil
        }
    }
    
    
    // Type Properties
    var playerName: String
    var characterName: String
    var levelsLeftToAdd: Int
    var abilityPointsLeftToAllocate: Int
    
    // we can get players current level and store the levels taken in this array.
    //var level: [PClass]
    
    // narrows the scope of our software
    let maxLevel = 3
    
    // these values are for instantiation.
    // ability stats
    var strBase: Int
    var dexBase: Int
    var conBase: Int
    var intBase: Int
    var wisBase: Int
    var chaBase: Int
    var acBase: Int
    
    
    // skills
    var acrobaticsBase: Int
    var appraiseBase: Int
    var bluffBase: Int
    var climbBase: Int
    var diplomacyBase: Int
    var disguiseBase: Int
    var escapeArtistBase: Int
    var flyBase: Int
    var healBase: Int
    var intimidateBase: Int
    var perceptionBase: Int
    var rideBase: Int
    var senseMotiveBase: Int
    var stealthBase: Int
    var survivalBase: Int
    var swimBase: Int
    
    // skill mods
    var acrobaticsMod: Int
    var appraiseMod: Int
    var bluffMod: Int
    var climbMod: Int
    var diplomacyMod: Int
    var disguiseMod: Int
    var escapeArtistMod: Int
    var flyMod: Int
    var healMod: Int
    var intimidateMod: Int
    var perceptionMod: Int
    var rideMod: Int
    var senseMotiveMod: Int
    var stealthMod: Int
    var survivalMod: Int
    var swimMod: Int
=======
import CoreData
class Hero: NSManagedObject{
>>>>>>> 5ad981c69c252b6f5056d851263e422ed4c68a1d
    
  
    
    // these values are fake
        // calc of cmb
    
    
        // calc of speed
    
    
        // saves.. should be handled by pcclass.. hero has an array of "classes"..
        //search that array and return these values for the highest
    
        
    // this is the end of the fake values
    
    
    
    // Computed Properties
<<<<<<< HEAD
    // ability mods
    var strMod: Int{
        return mod(theStat: strBase)
    }
    var dexMod: Int{
        return mod(theStat: dexBase)
    }
    var conMod: Int{
        return mod(theStat: conBase)
    }
    var intMod: Int{
        return mod(theStat: intBase)
    }
    var wisMod: Int{
        return mod(theStat: wisBase)
    }
    var chaMod: Int{
        return mod(theStat: chaBase)
=======
    // computed ability points
    var strength: Int{
        return (Int(strBase + strMod))
    }
    var dexterity: Int{
        return (Int(dexBase + dexMod))
    }
    var constitution: Int{
        return (Int(conBase + conMod))
    }
    var intelligence: Int{
        return Int(intBase + intMod)
    }
    var wisdom: Int{
        return Int(wisBase + wisMod)
    }
    var charisma: Int{
        return Int(chaBase + chaMod)
>>>>>>> 5ad981c69c252b6f5056d851263e422ed4c68a1d
    }
    var acMod: Int
    // mod helperFunction
    func mod(theStat: Int) -> Int{
        return ((theStat - 10)/2)
    }
    
    // computed misc other basics
    var ac: Int{
        return Int(acBase + dexMod + acMod)
    }
    var touchAC: Int{
        return Int(acBase + dexMod + acMod)
    }
    var flatAC: Int{
        return Int(acBase + acMod)
    }
    var cmb: Int{
        return Int(bab + strMod + sizeMod)
    }
    var cmd: Int{
        return Int(10 + strMod + dexMod + bab + sizeMod)
    }
    var speed: Int{
        return Int(characterBaseSpeed) // + modifiers
    }
    
    // computed skills... at some point we need to ask.. isClassSkill? then add 3 for the first point if so.
    var acrobatics: Int{
        return Int(acrobaticsBase + dexMod + acrobaticsMod)
    }
    var appraise: Int{
        return Int(appraiseBase + intMod + appraiseMod)
    }
    var bluff: Int{
      return Int(bluffBase + chaMod + bluffMod)
    }
    var climb: Int{
        return Int(climbBase + strMod + climbMod)
    }
    var diplomacy: Int{
        return Int(diplomacyBase + chaMod + diplomacyMod)
    }
    var disguise: Int{
        return Int(disguiseBase + chaMod + disguiseMod)
    }
    var escapeArtist: Int{
        return Int(escapeArtistBase + dexMod + disguiseMod)
    }
    var fly: Int{
        return Int(flyBase + dexMod + flyMod)
    }
    var heal: Int{
        return Int(healBase + wisMod + healMod)
    }
    var intimidate: Int{
        return Int(intimidateBase + chaMod + intimidateMod)
    }
    var perception: Int{
        return Int(perceptionBase + wisMod + perceptionMod)
    }
    var ride: Int{
        return Int(rideBase + dexMod + rideMod)
    }
    var senseMotive: Int{
        return Int(senseMotiveBase + wisMod + senseMotiveMod)
    }
    var stealth: Int{
        return Int(stealthBase + dexMod + stealthMod)
    }
    var survival: Int{
        return Int(survivalBase + wisMod + survivalMod)
    }
    var swim: Int{
        return Int(swimBase + strMod + swimMod)
    }
    
    
<<<<<<< HEAD
    init(level: Int, playerName: String, characterName: String){
        
        
        //self.level = []
        self.playerName = playerName
        self.characterName = characterName
        levelsLeftToAdd = level
        strBase = 10
        dexBase = 10
        conBase = 10
        intBase = 10
        wisBase = 10
        chaBase = 10
        acBase = 10
        
        acrobaticsBase = 0
        appraiseBase = 0
        bluffBase = 0
        climbBase = 0
        diplomacyBase = 0
        disguiseBase = 0
        escapeArtistBase = 0
        flyBase = 0
        healBase = 0
        intimidateBase = 0
        perceptionBase = 0
        rideBase = 0
        senseMotiveBase = 0
        stealthBase = 0
        survivalBase = 0
        swimBase = 0
        
        acrobaticsMod = 0
        appraiseMod = 0
        bluffMod = 0
        climbMod = 0
        diplomacyMod = 0
        disguiseMod = 0
        escapeArtistMod = 0
        flyMod = 0
        healMod = 0
        intimidateMod = 0
        perceptionMod = 0
        rideMod = 0
        senseMotiveMod = 0
        stealthMod = 0
        survivalMod = 0
        swimMod = 0
        
       
        acMod = 0
        
        abilityPointsLeftToAllocate = 20
        super.init()
    }
    init(level: Int, playerName: String, characterName: String, dexterityBase: Int, StrengthBase: Int){
        
        
        //self.level = []
        self.playerName = playerName
        self.characterName = characterName
        levelsLeftToAdd = level
        strBase = StrengthBase
        dexBase = dexterityBase
        conBase = 10
        intBase = 10
        wisBase = 10
        chaBase = 10
        acBase = 10
        
        acrobaticsBase = 0
        appraiseBase = 0
        bluffBase = 0
        climbBase = 0
        diplomacyBase = 0
        disguiseBase = 0
        escapeArtistBase = 0
        flyBase = 0
        healBase = 0
        intimidateBase = 0
        perceptionBase = 0
        rideBase = 0
        senseMotiveBase = 0
        stealthBase = 0
        survivalBase = 0
        swimBase = 0
        
        acrobaticsMod = 0
        appraiseMod = 0
        bluffMod = 0
        climbMod = 0
        diplomacyMod = 0
        disguiseMod = 0
        escapeArtistMod = 0
        flyMod = 0
        healMod = 0
        intimidateMod = 0
        perceptionMod = 0
        rideMod = 0
        senseMotiveMod = 0
        stealthMod = 0
        survivalMod = 0
        swimMod = 0
        
        
        acMod = 0
        
        abilityPointsLeftToAllocate = 20
        super.init()
    }
=======
    
>>>>>>> 5ad981c69c252b6f5056d851263e422ed4c68a1d
    // hero functions
    // find the stat to change and add change by to it.
    func changeStat(statInLowerCase stat: String, changeTo: Int){
        switch stat {
        case "str":
            self.strBase = Int16(changeTo)
        case "dex":
            self.dexBase = Int16(changeTo)
        case "con":
            self.conBase = Int16(changeTo)
        case "int":
            self.intBase = Int16(changeTo)
        case "wis":
            self.wisBase = Int16(changeTo)
        case "cha":
            self.chaBase = Int16(changeTo)
        default:
            print("Error in changeStat HERO")
        }
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(strBase, forKey: "strBase")
        aCoder.encode(dexBase, forKey: "dexBase")
    }
    
}
