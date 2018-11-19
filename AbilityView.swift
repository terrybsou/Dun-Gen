//
//  AbilityView.swift
//  Dun-Gen
//
//  Created by Brian Terry on 11/15/18.
//  Copyright © 2018 Brian Terry. All rights reserved.
//

import UIKit

class AbilityView: UIViewController {
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var strValLabel: UILabel!
    @IBOutlet weak var dexValLabel: UILabel!
    @IBOutlet weak var conValLabel: UILabel!
    @IBOutlet weak var intValLabel: UILabel!
    @IBOutlet weak var wisValLabel: UILabel!
    @IBOutlet weak var chaValLabel: UILabel!
    
    @IBOutlet weak var strModLabel: UILabel!
    @IBOutlet weak var dexModLabel: UILabel!
    @IBOutlet weak var conModLabel: UILabel!
    @IBOutlet weak var intModLabel: UILabel!
    @IBOutlet weak var wisModLabel: UILabel!
    @IBOutlet weak var chaModLabel: UILabel!
    
    @IBAction func strInc(_ sender: UIStepper) {
        if(DunGen.sharedInstance.canAllocStat() || !DunGen.sharedInstance.canAllocStat() && (Int(sender.value) < DunGen.sharedInstance.get(stat: "str"))){
            let tmp = DunGen.sharedInstance.get(stat: "str")
            DunGen.sharedInstance.changeStat(statInLowerCase: "str", changeTo: Int(sender.value))
            strValLabel.text = String(DunGen.sharedInstance.get(stat: "str"))
            if(isNegative(num: DunGen.sharedInstance.get(stat: "strMod"))){
                strModLabel.text = String(format: "%d", DunGen.sharedInstance.get(stat: "strMod"))
            }else{
                strModLabel.text = String(format: "+%d", DunGen.sharedInstance.get(stat: "strMod"))
            }
            if(tmp > DunGen.sharedInstance.get(stat: "str")){
                DunGen.sharedInstance.statWasAlloc(alloc: false)
            }else{
                DunGen.sharedInstance.statWasAlloc(alloc: true)
            }
            statusLabel.text = String(format:"You have %d points left!", DunGen.sharedInstance.hero!.abilityPointsLeftToAllocate)
        }
    }
    @IBAction func dexInc(_ sender: UIStepper) {
        if(DunGen.sharedInstance.canAllocStat() || !DunGen.sharedInstance.canAllocStat() && (Int(sender.value) < DunGen.sharedInstance.get(stat: "dex"))){
            let tmp = DunGen.sharedInstance.get(stat: "dex")
            DunGen.sharedInstance.changeStat(statInLowerCase: "dex", changeTo: Int(sender.value))
            dexValLabel.text = String(DunGen.sharedInstance.get(stat: "dex"))
            if(isNegative(num: DunGen.sharedInstance.get(stat: "dexMod"))){
                dexModLabel.text = String(format: "%d", DunGen.sharedInstance.get(stat: "dexMod"))
            }else{
                dexModLabel.text = String(format: "+%d", DunGen.sharedInstance.get(stat: "dexMod"))
            }
            if(tmp > DunGen.sharedInstance.get(stat: "dex")){
                DunGen.sharedInstance.statWasAlloc(alloc: false)
            }else{
                DunGen.sharedInstance.statWasAlloc(alloc: true)
            }
             statusLabel.text = String(format:"You have %d points left!", DunGen.sharedInstance.hero!.abilityPointsLeftToAllocate)
        }
    }
    @IBAction func conInc(_ sender: UIStepper) {
        if(DunGen.sharedInstance.canAllocStat() || !DunGen.sharedInstance.canAllocStat() && (Int(sender.value) < DunGen.sharedInstance.get(stat: "con"))){
            let tmp = DunGen.sharedInstance.get(stat: "con")
            DunGen.sharedInstance.changeStat(statInLowerCase: "con", changeTo: Int(sender.value))
            conValLabel.text = String(DunGen.sharedInstance.get(stat: "con"))
            if(isNegative(num: DunGen.sharedInstance.get(stat: "conMod"))){
                conModLabel.text = String(format: "%d", DunGen.sharedInstance.get(stat: "conMod"))
            }else{
                conModLabel.text = String(format: "+%d", DunGen.sharedInstance.get(stat: "conMod"))
            }
            if(tmp > DunGen.sharedInstance.get(stat: "con")){
                DunGen.sharedInstance.statWasAlloc(alloc: false)
            }else{
                DunGen.sharedInstance.statWasAlloc(alloc: true)
            }
             statusLabel.text = String(format:"You have %d points left!", DunGen.sharedInstance.hero!.abilityPointsLeftToAllocate)
        }
    }
    @IBAction func intInc(_ sender: UIStepper) {
        if(DunGen.sharedInstance.canAllocStat() || !DunGen.sharedInstance.canAllocStat() && (Int(sender.value) < DunGen.sharedInstance.get(stat: "int"))){
            let tmp = DunGen.sharedInstance.get(stat: "int")
            DunGen.sharedInstance.changeStat(statInLowerCase: "int", changeTo: Int(sender.value))
            intValLabel.text = String(DunGen.sharedInstance.get(stat: "int"))
            if(isNegative(num: DunGen.sharedInstance.get(stat: "intMod"))){
                intModLabel.text = String(format: "%d", DunGen.sharedInstance.get(stat: "intMod"))
            }else{
                intModLabel.text = String(format: "+%d", DunGen.sharedInstance.get(stat: "intMod"))
            }
            if(tmp > DunGen.sharedInstance.get(stat: "int")){
                DunGen.sharedInstance.statWasAlloc(alloc: false)
            }else{
                DunGen.sharedInstance.statWasAlloc(alloc: true)
            }
             statusLabel.text = String(format:"You have %d points left!", DunGen.sharedInstance.hero!.abilityPointsLeftToAllocate)
        }
    }
    @IBAction func wisInc(_ sender: UIStepper) {
        if(DunGen.sharedInstance.canAllocStat() || !DunGen.sharedInstance.canAllocStat() && (Int(sender.value) < DunGen.sharedInstance.get(stat: "wis"))){
            let tmp = DunGen.sharedInstance.get(stat: "wis")
            DunGen.sharedInstance.changeStat(statInLowerCase: "wis", changeTo: Int(sender.value))
            wisValLabel.text = String(DunGen.sharedInstance.get(stat: "wis"))
            if(isNegative(num: DunGen.sharedInstance.get(stat: "wisMod"))){
                wisModLabel.text = String(format: "%d", DunGen.sharedInstance.get(stat: "wisMod"))
            }else{
                wisModLabel.text = String(format: "+%d", DunGen.sharedInstance.get(stat: "wisMod"))
            }
            if(tmp > DunGen.sharedInstance.get(stat: "wis")){
                DunGen.sharedInstance.statWasAlloc(alloc: false)
            }else{
                DunGen.sharedInstance.statWasAlloc(alloc: true)
            }
             statusLabel.text = String(format:"You have %d points left!", DunGen.sharedInstance.hero!.abilityPointsLeftToAllocate)
        }
    }
    @IBAction func chaInc(_ sender: UIStepper) {
        if(DunGen.sharedInstance.canAllocStat() || !DunGen.sharedInstance.canAllocStat() && (Int(sender.value) < DunGen.sharedInstance.get(stat: "cha"))){
            let tmp = DunGen.sharedInstance.get(stat: "cha")
            DunGen.sharedInstance.changeStat(statInLowerCase: "cha", changeTo: Int(sender.value))
            chaValLabel.text = String(DunGen.sharedInstance.get(stat: "cha"))
            if(isNegative(num: DunGen.sharedInstance.get(stat: "chaMod"))){
                chaModLabel.text = String(format: "%d", DunGen.sharedInstance.get(stat: "chaMod"))
            }else{
                chaModLabel.text = String(format: "+%d", DunGen.sharedInstance.get(stat: "chaMod"))
            }
            if(tmp > DunGen.sharedInstance.get(stat: "cha")){
                DunGen.sharedInstance.statWasAlloc(alloc: false)
            }else{
                DunGen.sharedInstance.statWasAlloc(alloc: true)
            }
             statusLabel.text = String(format:"You have %d points left!", DunGen.sharedInstance.hero!.abilityPointsLeftToAllocate)
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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
