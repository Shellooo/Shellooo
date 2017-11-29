//
//  ViewController2.swift
//  Shellooo
//
//  Created by Elizabeth Brown on 11/27/17.
//  Copyright © 2017 Elizabeth Brown. All rights reserved.
//

import UIKit
import Canvas


class ViewController2: UIViewController {
    @IBOutlet weak var shell2BackgroundGif: UIImageView!
    var shell2Images: [UIImage] = []

override func viewDidLoad() {
        super.viewDidLoad()

    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
        
        var imageArray: [UIImage] = []
        
        for imageCount in 1..<total {
            let imageName = "\(imagePrefix)-\(imageCount).png"
            let image = UIImage(named: imageName)!
            
            imageArray.append(image)
        }
        return imageArray
    }
    
    func animate(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 18
        imageView.startAnimating()
    }
    
  shell2Images = createImageArray(total: 295, imagePrefix: "shell2")
  animate(imageView: shell2BackgroundGif, images: shell2Images)
    
    
        
        
        
    
        
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
