//
//  SecurityBlurEffect.swift
//  ResignActiveBlurEffect
//
//  Created by feiin on 14/12/25.
//  Copyright (c) 2014 year swiftmi. All rights reserved.
//

import Foundation
import UIKit


public class SecurityBlurEffect
{
     class func addBlurEffect(){
        
        var blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        var blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        blurEffectView.tag = 19999
        blurEffectView.frame = UIApplication.sharedApplication().keyWindow!.bounds
    
        UIApplication.sharedApplication().keyWindow!.backgroundColor = UIColor.clearColor()
    
        UIApplication.sharedApplication().keyWindow!.addSubview(blurEffectView)
        
        
    }
    
    
    class func removeBlurEffect(){
        
        var subViews = UIApplication.sharedApplication().keyWindow!.subviews;
        
        for  view in subViews {
            if view.tag == 19999 {
                
                if  view is UIVisualEffectView {
                    
                    UIView.animateWithDuration(0.3, animations: {
                        
                        
                        view.removeFromSuperview()
                    })
               

                }
            }
        }

    }
    
}