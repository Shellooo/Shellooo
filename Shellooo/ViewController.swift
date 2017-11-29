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
            
            let shellShakeQuotes=["Sure, be my guest","Oh Hey, Girl","Shake it like a salt shaker","You wanna be starting something","I'm a barbie girl","I'm not quite sure how to help you with that","You don't have to ask me for permission","If you have to ask...","Yes, go","I'm not going to judge","Yes, please","Hurry up, go!","You're so pretty…the answer is yes","Eww"]
            
            // Generate a random index
            
            let randomShakeIndex = Int(arc4random_uniform(UInt32(shellShakeQuotes.count)))
            
            // Get a random Saying
            
            let randomShakeSaying = shellShakeQuotes[randomShakeIndex]
            magicSayingLabel.text = randomShakeSaying; labelAnimation.startCanvasAnimation()
        }
    }


    
    
    @IBAction func tapTapTap(_ sender: Any) {
        
        buttonCount = buttonCount + 1
        
        let shellQuotes=["Shellooo says nooo","Eat some 🥑 🍞 & try again","AS IF!","It is certain - duh","You'll get the 🌹, girl.","Too tired to tell. Ask me later","As I sea it, yes","Signs point to - YAY","Yassssss","Do you, girl.","It's looking a bit wavy","Boy bye 👋","I better not say...","Eww","Super Doubtful","My reply is, oh SHELL-NOOO","Sorry, ain't lookin too good","You're so pretty…the answer is yes","Better not wait on that","Think, girl!! Ask again","My sources say..YES","My people say... NOPE","Let me ask my 🧜🏼‍♀️🧜🏼‍♀️🧜🏾‍♀️ and get back to you","I'm feeling hazy..ask again","Ask Siri, I'm a shell.","Namaste, No","No way. Drink rosé","I can't even….like give me a minute","IDK, Try Again 🤦🏽‍♀️","If there's a f#ckboy involved, NOO.","First of all…have you read your horoscope today?","WWKKD: What Would Kim K Do? ","Go for it. I won't tell anyone..." ,"MOOD. Do it","Yas, queen 👸🏾 ","Can you chill?","Well, you’re not not psycho","CUTE! Yes","Yes, my love","Byeeeee 👋👋👋","I dare you"]
        
        // Generate a random index
        
        let randomIndex = Int(arc4random_uniform(UInt32(shellQuotes.count)))
        
        // Get a random Saying
        
        let randomSaying = shellQuotes[randomIndex]
        magicSayingLabel.text = randomSaying; labelAnimation.startCanvasAnimation()
        if buttonCount > 4 {mermaidImages.isHidden = false}; mermaidAnimation.startCanvasAnimation()
        if buttonCount > 5 {mermaidImages.isHidden = true}
        if buttonCount == 15 {mermaidImages.isHidden = true}
        
    }

    
    //OVERRIDE FUNC VIEW DIDLOAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
shellooBackground.loadGif(name: "Shell1GIF")
 
    //    shellImages = createImageArray(total: 295, imagePrefix: "shell")
    //   animate(imageView: shellooBackground, images: shellImages)
        
        
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

    /* func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
    
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
    */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
        
    
    }

}


