//
//  UIStoryboardUnwindSegueRight.swift
//  Shellooo
//
//  Created by Elizabeth Brown on 3/3/18.
//  Copyright © 2018 Elizabeth Brown. All rights reserved.
//

import UIKit

class UIStoryboardUnwindSegueFromRight: UIStoryboardSegue {
    override func perform()
    {
        print("left")
        let src = self.source
        let dst = self.destination
        
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: -src.view.frame.size.width, y: 0)
        
        UIView.animate(withDuration: 0.25,
                       delay: 0.0,
                       options: .curveEaseInOut,
                       animations: {
                        dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
                       completion: { finished in
                        src.present(dst, animated: false, completion: nil)
        }
        )
    }
}
