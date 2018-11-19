//
//  CreateView.swift
//  Dun-Gen
//
//  Created by Brian Terry on 11/15/18.
//  Copyright © 2018 Brian Terry. All rights reserved.
//

import UIKit

class CreateView: UIViewController {
    @IBOutlet weak var cName: UITextField!
    @IBOutlet weak var pName: UITextField!
    
    @IBOutlet weak var cLevel: UILabel!
    
    @IBAction func stepper(_ sender: UIStepper) {
        cLevel.text = String(Int(sender.value))
    }
    // if fields are blank dont instantiate the new hero
    // if the fields are filled instantiate the new hero
    @IBAction func submitAction(_ sender: UIButton) {
        if(cName.text! == ""){
            print("no")
        }else if(pName.text! == ""){
            print("no")
        }else{
        DunGen.sharedInstance.heroInit(level: Int(cLevel.text!)!, playerName: pName.text!, characterName: cName.text!)
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(cName.text! == ""){
            return false
        }else if(pName.text! == ""){
            return false
        }else{
            return true
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
