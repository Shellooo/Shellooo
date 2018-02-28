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
    
    @IBOutlet weak var heartButtonView: UIView!
    @IBOutlet weak var shelloooLabel2: UILabel!
    @IBOutlet weak var shelloooLabel1: UILabel!
    @IBOutlet weak var glitterGIF: UIImageView!
    @IBOutlet weak var glitterView: UIView!
    @IBOutlet weak var mermaidImages: UIImageView!
    @IBOutlet weak var mermaidAnimation: UIView!
    @IBOutlet weak var labelAnimation: CSAnimationView!
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        if event?.subtype == UIEventSubtype.motionShake
        {
            shakeCount = shakeCount + 1
            
            let shellShakeQuotes=["Sure","It’s a yes from me","Make it happen","Yassssss","You don't have to ask me for permission","Yes, go for it","Do it","Umm.. maybe think again","My 🧜🏿‍♀️🧜🏻‍♀️🧜🏼‍♀️ say yes","Yes!","Eww","I can't give you the green light for that","Obviously yes","Yas queen 👸🏼","Go for it. I won't tell anyone...","You're so pretty…the answer is yes","It is certain - DUH","Signs point to - YASSS","OMG, NO","Shellooo says NOOO","Sorry, no","Nahhh","Eww","OMG, NO","I can't even rn…","Let me ask my 🧜🏼‍♀️🧜🏼‍♀️🧜🏾‍♀️ and get back to you","Shellooo says YUP","Totally! Yes","🐚 we say yasss","Not gunna happen","It is a certainty","Love it YES","Ohhh I don't know","Tough call"]
            
            // Generate a random index
            
            let randomShakeIndex = Int(arc4random_uniform(UInt32(shellShakeQuotes.count)))
            
            // Get a random Saying
            
            let randomShakeSaying = shellShakeQuotes[randomShakeIndex]
            magicSayingLabel.text = randomShakeSaying; labelAnimation.startCanvasAnimation()
        }
        if shakeCount == 1 {glitterGIF.isHidden = false}; glitterView.startCanvasAnimation()
        if shakeCount > 1 {glitterGIF.isHidden = true}
        if shakeCount == 7 {glitterGIF.isHidden = false}; glitterView.startCanvasAnimation()
        if shakeCount > 7 {glitterGIF.isHidden = true}
    }
    
    
    @IBAction func tapTapTap(_ sender: Any) {
        
        buttonCount = buttonCount + 1
        
        let shellQuotes=["It's a total yes","It is certain - duh","As I sea it, yes","Signs point to - YAY","Yassssss","Signs point to YASSS","You do you","My reply is YASSS","You're so pretty…the answer is yes","You're so pretty...but the answer is no","My sources say..YES","Go for it - I won't tell anyone...","I’m all about it","MOOD. Do it","Yas queen 👸🏾","Well, you’re not not psycho","Totally! Yes","Yes, my love","I dare you","Shellooo says NOOO","AS IF!","It's looking a bit wavy","Yes, yes, yes!","It's so a yes","no no no no no no NOPE","Suuuper Doubtful","I doubt it","My reply is oh SHELL-NOOO","My reply is oh SHELL-YEA","My reply is NAH","Sorry, ain't lookin too good","Better not wait on it","My people say... NOPE","No way rosé","NOOO... and you know it","No, Byeee 👋","I’m way too tired, ask again later","I better not say…","Think hard, ask again","Let me ask my 🧜🏼‍♀️🧜🏼‍♀️🧜🏾‍♀️ and get back to you","I'm feeling hazy..ask again","Ask Siri, I'm a shell","I can't even rn…","I can't even…like give me a minute","IDK, Try Again 🤦🏽‍♀️","First of all…have you read your horoscope today?","If you read your horoscope, you'd know","Like, YEAH!","Eat some 🥑 🍞 & try again","AS IF!","Couldn't be more certain","Tots yes","Way cool - yes"]
        
        // Generate a random index
        
        let randomIndex = Int(arc4random_uniform(UInt32(shellQuotes.count)))
        
        // Get a random Saying
        
        let randomSaying = shellQuotes[randomIndex]
        magicSayingLabel.text = randomSaying; labelAnimation.startCanvasAnimation()
        if buttonCount == 4 {heartButtonView.isHidden = false}; heartButtonView.startCanvasAnimation()
        if buttonCount > 4 {heartButtonView.isHidden = true}
        if buttonCount > 4 {mermaidImages.isHidden = false}; mermaidAnimation.startCanvasAnimation()
        if buttonCount > 5 {mermaidImages.isHidden = true};
        if buttonCount > 9 {mermaidImages.isHidden = false}; mermaidAnimation.startCanvasAnimation()
        if buttonCount > 10 {mermaidImages.isHidden = true};
    }
    
    func applyMotionEffect (toView view:UIView, magnitude:Float) {
        let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = -magnitude
        xMotion.maximumRelativeValue = magnitude
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = -magnitude
        yMotion.maximumRelativeValue = magnitude
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [xMotion, yMotion]
        
        view.addMotionEffect(group)
    }
    
    
    
    
    
    //OVERRIDE FUNC VIEW DIDLOAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyMotionEffect(toView: shelloooLabel2, magnitude: 10)
        applyMotionEffect(toView: shelloooLabel1, magnitude: 10)
        applyMotionEffect(toView: magicSayingLabel, magnitude: 5)
        
        DispatchQueue.global(qos: .userInitiated).async {
            let shellImages = self.createImageArray(total: 295, imagePrefix: "shell")
            
            DispatchQueue.main.async {
                self.animate(imageView: self.shellooBackground, images: shellImages)
            }
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        
        magicSayingLabel.text = "Shake or Tap. Duh"
        mermaidImages.isHidden = true
        glitterGIF.isHidden = true
        glitterGIF.loadGif(name: "glitter")
        heartButtonView.isHidden = true
        
        
        var mermaidImageNames = ["mermaid-1.png","mermaid-2.png","mermaid-3.png","mermaid-4.png"]
        var mermaidImagesVar = [UIImage]()
        for i in 0..<mermaidImageNames.count{
            mermaidImagesVar.append(UIImage(named: mermaidImageNames[i])!)
        }
        mermaidImages.animationImages = mermaidImagesVar
        mermaidImages.animationDuration = 1.5
        mermaidImages.startAnimating()
        
    }
    
    
    @IBAction func swipeLeftVC(_ sender: Any) {
        performSegue(withIdentifier: "segueToMe", sender: nil)
    }
    
    @IBAction func heartButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "heartSegue", sender: nil)
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
    
    @IBAction func segueToMe(segue: UIStoryboardSegue) {
        // segue back
    }
    
    override func segueForUnwinding(to toViewController: UIViewController, from fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue {
        
        if let id = identifier {
            if id == "returnToMainViewController" {
                let unwindSegue = UIStoryboardUnwindSegueFromRight(identifier: id, source: fromViewController, destination: toViewController)
                return unwindSegue
            }
        }
        
        return super.segueForUnwinding(to: toViewController, from: fromViewController, identifier: identifier)!
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
    }
    
}


