//
//  CreateOrLoad.swift
//  Dun-Gen
//
//  Created by Brian Terry on 11/15/18.
//  Copyright © 2018 Brian Terry. All rights reserved.
//

import UIKit
import CoreData
class CreateOrLoadView: UIViewController {
    @IBOutlet weak var isHeroLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "HeroSave")
        
        do{
            let heros = try context.fetch(request) as! [NSManagedObject]
            for hero in heros{
               //let thisHero = hero.value(forKey: "heroData") as! Hero ?? nil
                //isHeroLabel.text = thisHero?.playerName
            }
           
        }catch{
            print("error")
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func CreateHeroButton(_ sender: UIButton) {
        
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
