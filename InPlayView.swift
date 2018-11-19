//
//  FirstViewController.swift
//  Dun-Gen
//
//  Created by Brian Terry on 11/15/18.
//  Copyright © 2018 Brian Terry. All rights reserved.
//

import UIKit

class InPlayView: UIViewController {
    // basics labels
    @IBOutlet weak var strLabel: UILabel!
    @IBOutlet weak var dexLabel: UILabel!
    @IBOutlet weak var conLabel: UILabel!
    @IBOutlet weak var intLabel: UILabel!
    @IBOutlet weak var wisLabel: UILabel!
    @IBOutlet weak var chaLabel: UILabel!
    @IBOutlet weak var acLabel: UILabel!
    @IBOutlet weak var touchLabel: UILabel!
    @IBOutlet weak var flatLabel: UILabel!
    @IBOutlet weak var cmbLabel: UILabel!
    @IBOutlet weak var cmdLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
    // skills labels
    @IBOutlet weak var acrobaticsLabel: UILabel!
    @IBOutlet weak var appraiseLabel: UILabel!
    @IBOutlet weak var bluffLabel: UILabel!
    @IBOutlet weak var climbLabel: UILabel!
    @IBOutlet weak var diplomacyLabel: UILabel!
    @IBOutlet weak var disguiseLabel: UILabel!
    @IBOutlet weak var escapeArtistLabel: UILabel!
    @IBOutlet weak var flyLabel: UILabel!
    @IBOutlet weak var healLabel: UILabel!
    @IBOutlet weak var intimidateLabel: UILabel!
    @IBOutlet weak var perceptionLabel: UILabel!
    @IBOutlet weak var rideLabel: UILabel!
    @IBOutlet weak var senseMotiveLabel: UILabel!
    @IBOutlet weak var stealthLabel: UILabel!
    @IBOutlet weak var survivalLabel: UILabel!
    @IBOutlet weak var swimLabel: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
        // can I send a notification.. basically saying hey draw stats? otherwise don't waste your time? My knowledge of these views getting un-loaded isn't great. 
        drawStats()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(DunGen.sharedInstance.hero!.playerName, DunGen.sharedInstance.hero!.characterName, DunGen.sharedInstance.hero!.levelsLeftToAdd)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func drawStats(){
        // draw stats for basics
        if(isNegative(num: DunGen.sharedInstance.get(stat: "strMod"))){
            strLabel.text = String(format: "Str %d", DunGen.sharedInstance.get(stat: "strMod"))
        }else{
            strLabel.text = String(format: "Str +%d", DunGen.sharedInstance.get(stat: "strMod"))
        }
        
        if(isNegative(num: DunGen.sharedInstance.get(stat: "dexMod"))){
            dexLabel.text = String(format: "Dex %d", DunGen.sharedInstance.get(stat: "dexMod"))
        }else{
            dexLabel.text = String(format: "Dex +%d", DunGen.sharedInstance.get(stat: "dexMod"))
        }
        
        if(isNegative(num: DunGen.sharedInstance.get(stat: "conMod"))){
            conLabel.text = String(format: "Con %d", DunGen.sharedInstance.get(stat: "conMod"))
        }else{
            conLabel.text = String(format: "Con +%d", DunGen.sharedInstance.get(stat: "conMod"))
        }
        
        if(isNegative(num: DunGen.sharedInstance.get(stat: "intMod"))){
            intLabel.text = String(format: "Int %d", DunGen.sharedInstance.get(stat: "intMod"))
        }else{
            intLabel.text = String(format: "Int +%d", DunGen.sharedInstance.get(stat: "intMod"))
        }
        
        if(isNegative(num: DunGen.sharedInstance.get(stat: "wisMod"))){
            wisLabel.text = String(format: "Wis %d", DunGen.sharedInstance.get(stat: "wisMod"))
        }else{
            wisLabel.text = String(format: "Wis +%d", DunGen.sharedInstance.get(stat: "wisMod"))
        }
        
        if(isNegative(num: DunGen.sharedInstance.get(stat: "chaMod"))){
            chaLabel.text = String(format: "Cha %d", DunGen.sharedInstance.get(stat: "chaMod"))
        }else{
            chaLabel.text = String(format: "Cha +%d", DunGen.sharedInstance.get(stat: "chaMod"))
        }
        
        if(isNegative(num: DunGen.sharedInstance.get(stat: "cmb"))){
            cmbLabel.text = String(format: "CMB %d", DunGen.sharedInstance.get(stat: "cmb"))
        }else{
            cmbLabel.text = String(format: "CMB +%d", DunGen.sharedInstance.get(stat: "cmb"))
        }
        
        acLabel.text = String(format: "AC: %d", DunGen.sharedInstance.get(stat: "ac"))
        touchLabel.text = String(format: "Touch: %d", DunGen.sharedInstance.get(stat: "touch"))
        flatLabel.text = String(format: "Flat: %d", DunGen.sharedInstance.get(stat: "flat"))
        speedLabel.text = String(format: "Speed: %d", DunGen.sharedInstance.get(stat: "speed"))
        // end draw stats for basics
        
        // draw stats for Skills
        if(isNegative(num: DunGen.sharedInstance.get(stat: "acrobatics"))){
            acrobaticsLabel.text = String(format: "%d Acrobatics", DunGen.sharedInstance.get(stat: "acrobatics"))
        }else{
            acrobaticsLabel.text = String(format: "+%d Acrobatics", DunGen.sharedInstance.get(stat: "acrobatics"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "appraise"))){
            appraiseLabel.text = String(format: "%d Appraise", DunGen.sharedInstance.get(stat: "appraise"))
        }else{
            appraiseLabel.text = String(format: "+%d Appraise", DunGen.sharedInstance.get(stat: "appraise"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "bluff"))){
            bluffLabel.text = String(format: "%d Bluff", DunGen.sharedInstance.get(stat: "bluff"))
        }else{
            bluffLabel.text = String(format: "+%d Bluff", DunGen.sharedInstance.get(stat: "bluff"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "climb"))){
            climbLabel.text = String(format: "%d Climb", DunGen.sharedInstance.get(stat: "climb"))
        }else{
            climbLabel.text = String(format: "+%d Climb", DunGen.sharedInstance.get(stat: "climb"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "diplomacy"))){
            diplomacyLabel.text = String(format: "%d Diplomacy", DunGen.sharedInstance.get(stat: "diplomacy"))
        }else{
            diplomacyLabel.text = String(format: "+%d Diplomacy", DunGen.sharedInstance.get(stat: "diplomacy"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "disguise"))){
            disguiseLabel.text = String(format: "%d Disguise", DunGen.sharedInstance.get(stat: "disguise"))
        }else{
            disguiseLabel.text = String(format: "+%d Disguise", DunGen.sharedInstance.get(stat: "disguise"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "escapeArtist"))){
            escapeArtistLabel.text = String(format: "%d Escape Artist", DunGen.sharedInstance.get(stat: "escapeArtist"))
        }else{
            escapeArtistLabel.text = String(format: "+%d Escape Artist", DunGen.sharedInstance.get(stat: "escapeArtist"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "fly"))){
            flyLabel.text = String(format: "%d Fly", DunGen.sharedInstance.get(stat: "fly"))
        }else{
            flyLabel.text = String(format: "+%d Fly", DunGen.sharedInstance.get(stat: "fly"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "heal"))){
            healLabel.text = String(format: "%d Heal", DunGen.sharedInstance.get(stat: "fly"))
        }else{
            healLabel.text = String(format: "+%d Heal", DunGen.sharedInstance.get(stat: "heal"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "intimidate"))){
            intimidateLabel.text = String(format: "%d Intimidate", DunGen.sharedInstance.get(stat: "intimidate"))
        }else{
            intimidateLabel.text = String(format: "+%d Intimidate", DunGen.sharedInstance.get(stat: "intimidate"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "perception"))){
            perceptionLabel.text = String(format: "%d Perception", DunGen.sharedInstance.get(stat: "perception"))
        }else{
            perceptionLabel.text = String(format: "+%d Perception", DunGen.sharedInstance.get(stat: "perception"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "ride"))){
            rideLabel.text = String(format: "%d Ride", DunGen.sharedInstance.get(stat: "ride"))
        }else{
            rideLabel.text = String(format: "+%d Ride", DunGen.sharedInstance.get(stat: "ride"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "senseMotive"))){
            senseMotiveLabel.text = String(format: "%d Sense Motive", DunGen.sharedInstance.get(stat: "senseMotive"))
        }else{
            senseMotiveLabel.text = String(format: "+%d Sense Motive", DunGen.sharedInstance.get(stat: "senseMotive"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "stealth"))){
            stealthLabel.text = String(format: "%d Stealth", DunGen.sharedInstance.get(stat: "stealth"))
        }else{
            stealthLabel.text = String(format: "+%d Stealth", DunGen.sharedInstance.get(stat: "stealth"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "survival"))){
            survivalLabel.text = String(format: "%d Survival", DunGen.sharedInstance.get(stat: "survival"))
        }else{
            survivalLabel.text = String(format: "+%d Survival", DunGen.sharedInstance.get(stat: "survival"))
        }
        if(isNegative(num: DunGen.sharedInstance.get(stat: "swim"))){
            swimLabel.text = String(format: "%d Swim", DunGen.sharedInstance.get(stat: "swim"))
        }else{
            swimLabel.text = String(format: "+%d Swim", DunGen.sharedInstance.get(stat: "swim"))
        }
    }
  
    
   
    // helper function to check for negative numbers
    func isNegative(num: Int) -> Bool{
        if(num < 0){
            return true
        }else{
            return false
        }
    }
    
}

