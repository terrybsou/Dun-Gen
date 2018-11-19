//
//  DunGen.swift
//  Dun-Gen
//
//  Created by Brian Terry on 11/15/18.
//  Copyright © 2018 Brian Terry. All rights reserved.
//

import Foundation
<<<<<<< HEAD
import UIKit
import CoreData
class DunGen:NSObject, NSCoding{
    
    
    
    
    
=======
import CoreData
class DunGen{
>>>>>>> 5ad981c69c252b6f5056d851263e422ed4c68a1d
    
    // the globally accessible shared instance
    // I cant init the hero immediately... causes a shared instance problem.
    static let sharedInstance = DunGen()
    
    var SavedHeroes: [NSManagedObject] = []
    
    // errors
    let fakeNumber = 99
    let error = 55
    // type properties
    var hero: Hero?
    // file vars
    var dataFilePath: String = ""
    
    // function to archive the current hero
    func saveData() {
        
        let heroData:Data = NSKeyedArchiver.archivedData(withRootObject: DunGen.sharedInstance)
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        let managedContext =
            appDelegate.persistentContainer.viewContext
        let entity =
            NSEntityDescription.entity(forEntityName: "HeroSave",
                                       in: managedContext)!
        let saveHero = NSManagedObject(entity: entity,
                                     insertInto: managedContext)
        saveHero.setValue(heroData, forKey: "heroData")
        
        do {
            try managedContext.save()
            print("managesaved")
            SavedHeroes.append(saveHero)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
        // Loading
        
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "HeroSave")
        do {
            SavedHeroes = try managedContext.fetch(fetchRequest)
            let testHero = NSKeyedUnarchiver.unarchiveObject(with:heroData)
            let thisHero = testHero as? DunGen
            if((thisHero) != nil){
                DunGen.sharedInstance.hero = thisHero?.hero
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        
        
        
        print("Saved")
    }
    
    func heroInit(level: Int, playerName: String, characterName: String){
<<<<<<< HEAD
        self.hero = Hero(level: level, playerName: playerName, characterName: characterName)
        dataFilePath = "TestFile"
        saveData()
=======
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let apples = Hero(context: context)
            apples.playerName = playerName
            apples.characterName = characterName
            apples.levelsLeftToAdd = Int16(level)
            apples.strBase = 10
            apples.dexBase = 10
            apples.conBase = 10
            apples.intBase = 10
            apples.wisBase = 10
            apples.chaBase = 10
            apples.acBase = 10
            apples.acrobaticsBase = 0
            apples.appraiseBase = 0
            apples.bluffBase = 0
            apples.climbBase = 0
            apples.diplomacyBase = 0
            apples.disguiseBase = 0
            apples.escapeArtistBase = 0
            apples.flyBase = 0
            apples.healBase = 0
            apples.intimidateBase = 0
            apples.perceptionBase = 0
            apples.rideBase = 0
            apples.senseMotiveBase = 0
            apples.stealthBase = 0
            apples.survivalBase = 0
            apples.swimBase = 0
        
            apples.acrobaticsMod = 0
            apples.appraiseMod = 0
            apples.bluffMod = 0
            apples.climbMod = 0
            apples.diplomacyMod = 0
            apples.disguiseMod = 0
            apples.escapeArtistMod = 0
            apples.flyMod = 0
            apples.healMod = 0
            apples.intimidateMod = 0
            apples.perceptionMod = 0
            apples.rideMod = 0
            apples.senseMotiveMod = 0
            apples.stealthMod = 0
            apples.survivalMod = 0
            apples.swimMod = 0
            
            apples.strMod = 0
            apples.dexMod = 0
            apples.conMod = 0
            apples.intMod = 0
            apples.wisMod = 0
            apples.chaMod = 0
            apples.acMod = 0
            
            apples.abilityPointsLeftToAllocate = 20
        
>>>>>>> 5ad981c69c252b6f5056d851263e422ed4c68a1d
    }
    
        
    // get function that retrieves a specific stat based on string supplied
    func get(stat: String) -> Int{
                switch stat {
                case "str":
                   return DunGen.sharedInstance.hero!.strBase
                case "dex":
                    return DunGen.sharedInstance.hero!.dexBase
                case "con":
                    return DunGen.sharedInstance.hero!.conBase
                case "int":
                   return DunGen.sharedInstance.hero!.intBase
                case "wis":
                    return DunGen.sharedInstance.hero!.wisBase
                case "cha":
                    return DunGen.sharedInstance.hero!.chaBase
                case "strMod":
                    return DunGen.sharedInstance.hero!.strMod
                case "dexMod":
                    return DunGen.sharedInstance.hero!.dexMod
                case "conMod":
                    return DunGen.sharedInstance.hero!.conMod
                case "intMod":
                    return DunGen.sharedInstance.hero!.intMod
                case "wisMod":
                    return DunGen.sharedInstance.hero!.wisMod
                case "chaMod":
                    return DunGen.sharedInstance.hero!.chaMod
                case "ac":
                    return DunGen.sharedInstance.hero!.ac
                case "touch":
                    return DunGen.sharedInstance.hero!.touchAC
                case "flat":
                    return DunGen.sharedInstance.hero!.flatAC
                case "fort":
                    return Int(DunGen.sharedInstance.hero!.fort)
                case "ref":
                    return Int(DunGen.sharedInstance.hero!.ref)
                case "will":
                    return Int(DunGen.sharedInstance.hero!.will)
                case "cmb":
                    return DunGen.sharedInstance.hero!.cmb
                case "cmd":
                    return DunGen.sharedInstance.hero!.cmd
                case "speed":
                    return DunGen.sharedInstance.hero!.speed
                case "acrobatics":
                    return DunGen.sharedInstance.hero!.acrobatics
                case "appraise":
                    return DunGen.sharedInstance.hero!.appraise
                case "bluff":
                    return DunGen.sharedInstance.hero!.bluff
                case "climb":
                    return DunGen.sharedInstance.hero!.climb
                case "diplomacy":
                    return DunGen.sharedInstance.hero!.diplomacy
                case "disguise":
                    return DunGen.sharedInstance.hero!.disguise
                case "escapeArtist":
                    return DunGen.sharedInstance.hero!.escapeArtist
                case "fly":
                    return DunGen.sharedInstance.hero!.fly
                case "heal":
                    return DunGen.sharedInstance.hero!.fly
                case "intimidate":
                    return DunGen.sharedInstance.hero!.intimidate
                case "perception":
                    return DunGen.sharedInstance.hero!.perception
                case "ride":
                    return DunGen.sharedInstance.hero!.ride
                case "senseMotive":
                    return DunGen.sharedInstance.hero!.senseMotive
                case "stealth":
                    return DunGen.sharedInstance.hero!.stealth
                case "survival":
                    return DunGen.sharedInstance.hero!.survival
                case "swim":
                    return DunGen.sharedInstance.hero!.swim
                default:
                    print("error during stat retrieval")
                    return error
        }
    }
    // helper function that returns a stat as a string
    func getStatAsString(stat: String) -> String{
        return String(get(stat: stat))
    }
    // passing this function to Hero.swift where it will be handled.
    func changeStat(statInLowerCase stat: String, changeTo: Int){
        self.hero?.changeStat(statInLowerCase: stat, changeTo: changeTo)
    }
    func save(){
        
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(hero, forKey: "Hero")
        
    }
    // function that will handle the allocation/ deallocation of stats
    func statWasAlloc(alloc: Bool){
        if(alloc){
            DunGen.sharedInstance.hero?.abilityPointsLeftToAllocate -= 1
        }else{
            DunGen.sharedInstance.hero?.abilityPointsLeftToAllocate += 1
        }
    }
    func canAllocStat()-> Bool{
        return(DunGen.sharedInstance.hero?.abilityPointsLeftToAllocate != 0)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        if let thisHero = aDecoder.decodeObject(forKey: "Hero") as? Hero
        {
            
            // Must call designated initializer.
            
             self.init()
            self.hero = thisHero
            
        } else {
            
            fatalError("unable to decode Hero object")
            return nil
        }
    }
}
