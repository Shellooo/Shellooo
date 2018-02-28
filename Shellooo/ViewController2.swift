//
//  ViewController2.swift
//  Shellooo
//
//  Created by Elizabeth Brown on 1/10/18.
//  Copyright © 2018 Elizabeth Brown. All rights reserved.
//
import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var blueGem: UIImageView!
    @IBAction func blueGemSegue(_ sender: Any) {
        performSegue(withIdentifier: "blueGemSegue", sender: nil)
    }
    @IBOutlet weak var shell2GIF: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.global(qos: .userInitiated).async {
            
            self.shell2GIF.loadGif(name: "shell2GIF")
        }
    }
    
    // Do any additional setup after loading the view.
    
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
