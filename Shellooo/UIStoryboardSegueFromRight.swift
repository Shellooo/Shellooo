//
//  UIStoryboardSegueFromRight.swift
//  Shellooo
//
//  Created by Elizabeth Brown on 2/9/18.
//  Copyright © 2018 Elizabeth Brown. All rights reserved.
//

import UIKit

class UIStoryboardSegueFromRight: UIStoryboardSegue {
    
    override func perform() 
    {print("right")
        let src = self.source as UIViewController
        let dst = self.destination as UIViewController
        
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: src.view.frame.size.width, y: 0)
        
        UIView.animate(withDuration: 0.25,
                                   delay: 0.0,
                                   options: [.curveEaseIn, .curveEaseOut],
                                   animations: {
                                    dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
                                   completion: { finished in
                                    src.present(dst, animated: false, completion: nil)
        }
        )
    }
}



