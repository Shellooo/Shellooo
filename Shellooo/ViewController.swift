//
//  ViewController.swift
//  Shellooo
//
//  Created by Elizabeth Brown on 11/21/17.
//  Copyright © 2017 Elizabeth Brown. All rights reserved.
//

import UIKit
import Canvas


class ViewController: UIViewController {

    @IBOutlet weak var shellooBackground: UIImageView!
    @IBOutlet weak var magicSayingLabel: UILabel!
    var buttonCount = 0
    var shakeCount = 0
    var shellImages: [UIImage] = []
    
    @IBOutlet weak var mermaidImages: UIImageView!
    @IBOutlet weak var mermaidAnimation: UIView!
    @IBOutlet weak var labelAnimation: CSAnimationView!
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        if event?.subtype == UIEventSubtype.motionShake
        {
            shakeCount = shakeCount + 1
            
            let shellShakeQuotes=["Sure","It’s a yes from me","Make it happen","Yassssss","You don't have to ask me for permission","Yes, go for it","Do it","Do it, I’m not going to judge","My 🧜🏿‍♀️🧜🏻‍♀️🧜🏼‍♀️ say yes”","Yes!","Eww","I can't give you the green light for that","I'm not quite sure how to help you with that","Yas queen 👸🏼","Go for it. I won't tell anyone...","You're so pretty…the answer is yes","Yes times ∞","Signs point to - YASSS","OMG, NO","Shellooo says NOOO","I can't even rn…","Let me ask my 🧜🏼‍♀️🧜🏼‍♀️🧜🏾‍♀️ and get back to you"]
            
            // Generate a random index
            
            let randomShakeIndex = Int(arc4random_uniform(UInt32(shellShakeQuotes.count)))
            
            // Get a random Saying
            
            let randomShakeSaying = shellShakeQuotes[randomShakeIndex]
            magicSayingLabel.text = randomShakeSaying; labelAnimation.startCanvasAnimation()
        }
    }
    
    
    @IBAction func tapTapTap(_ sender: Any) {
        
        buttonCount = buttonCount + 1
        
        let shellQuotes=["It is certain - duh","As I sea it, yes","Signs point to - YAY","Yassssss","Signs point to - YASSS","You do you","(Yes x ∞) + 1","My reply is YASSS","You're so pretty…the answer is yes","You're so pretty...but the answer is no","My sources say..YES","Go for it. I won't tell anyone...","I’m all about it","MOOD. Do it","Yas queen 👸🏾","Well, you’re not not psycho","Totally! Yes","Yes, my love","I dare you","Shellooo says NOOO","AS IF!","It's looking a bit wavy","Sorry, no","Nahhh","Eww","OMG, NO","No no no no no no NO","No x ∞","Suuuper Doubtful","I doubt it","My reply is oh SHELL-NOOO","My replay is NAH","Sorry, ain't lookin too good","Better not wait on it","My people say... NOPE","No way rosé","NOOO... and you know it","No, Byeee 👋","I’m way too tired, ask again later","I better not say…","Think hard, ask again","Let me ask my 🧜🏼‍♀️🧜🏼‍♀️🧜🏾‍♀️ and get back to you","I'm feeling hazy..ask again","Ask Siri, I'm a shell","I can't even rn…","I can't even…like give me a minute","IDK, Try Again 🤦🏽‍♀️","First of all…have you read your horoscope today?","WWKKD: What Would Kim K Do?","Eat some 🥑 🍞 & try again","AS IF!"]
        
        // Generate a random index
        
        let randomIndex = Int(arc4random_uniform(UInt32(shellQuotes.count)))
        
        // Get a random Saying
        
        let randomSaying = shellQuotes[randomIndex]
        magicSayingLabel.text = randomSaying; labelAnimation.startCanvasAnimation()
        if buttonCount > 4 {mermaidImages.isHidden = false}; mermaidAnimation.startCanvasAnimation()
        if buttonCount > 5 {mermaidImages.isHidden = true}
        if buttonCount == 15 {mermaidImages.isHidden = false}; mermaidAnimation.startCanvasAnimation()
        
    }

    
//OVERRIDE FUNC VIEW DIDLOAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//shellooBackground.loadGif(name: "Shell1GIF")
 
    shellImages = createImageArray(total: 295, imagePrefix: "shell")
    animate(imageView: shellooBackground, images: shellImages)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    
        magicSayingLabel.text = "Shake or Tap. Duh"
        mermaidImages.isHidden = true

        var mermaidImageNames = ["mermaid-1.png","mermaid-2.png","mermaid-3.png","mermaid-4.png"]
        var mermaidImagesVar = [UIImage]()
        for i in 0..<mermaidImageNames.count{
            mermaidImagesVar.append(UIImage(named: mermaidImageNames[i])!)
        }
        mermaidImages.animationImages = mermaidImagesVar
        mermaidImages.animationDuration = 1.5
        mermaidImages.startAnimating()

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
        imageView.animationDuration = 18
        imageView.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
        
    
    }

}


