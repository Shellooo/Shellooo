//
//  ViewController2.swift
//  Shellooo
//
//  Created by Elizabeth Brown on 1/10/18.
//  Copyright © 2018 Elizabeth Brown. All rights reserved.
//
import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var shell2Background: UIImageView!
    
    @IBAction func swipeLeftAction(_ sender: Any) {
        performSegue(withIdentifier: "segueToMe", sender: nil)
        print("we did it")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        DispatchQueue.global(qos: .userInitiated).async {
//self.shell2Background.loadGif(name: "shell2GIF")
            
            DispatchQueue.main.async {
                
            }
        }
        

    
    // Do any additional setup after loading the view.
    
        func didReceiveMemoryWarning() {
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
}
