//
//  ViewController.swift
//  Shellooo
//
//  Created by Elizabeth Brown on 11/21/17.
//  Copyright © 2017 Elizabeth Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shellooBackground: UIImageView!
    
    var shellImages: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shellImages = createImageArray(total: 295, imagePrefix: "shell")
        animate(imageView: shellooBackground, images: shellImages)
        
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
    
        var imageArray: [UIImage] = []
        
        for imageCount in 1..<total {
            let imageName = "\(imagePrefix)-\(imageCount).jpg"
            let image = UIImage(named: imageName)!
       
            imageArray.append(image)
        }
        return imageArray
    }
    func animate(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 15
        imageView.startAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


