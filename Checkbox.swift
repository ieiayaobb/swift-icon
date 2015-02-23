//
//  UICheckbox.swift
//  SimpleTODO
//
//  Created by 沈一能 on 15/2/23.
//  Copyright (c) 2015年 Fluid. All rights reserved.
//

import UIKit

class UICheckbox: UIButton {
    var rightLayer = RightLayer()
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func drawRect(frame: CGRect)
    {
        var ctx:CGContextRef = UIGraphicsGetCurrentContext()
        UIGraphicsPushContext(ctx)
        
        self.backgroundColor = UIColor.blackColor()
        
        CGContextSetLineWidth(ctx, 3.0)
        CGContextSetStrokeColorWithColor(ctx, UIColor.whiteColor().CGColor)
        
        CGContextMoveToPoint(ctx, 0, -5)
        CGContextAddArc(ctx, 5, 5, 5, CGFloat(M_PI), CGFloat(3 / 2 * M_PI), 0)
        CGContextAddLineToPoint(ctx, frame.width - 8, 0)
        CGContextAddLineToPoint(ctx, frame.width, 8)
        CGContextAddLineToPoint(ctx, frame.width, frame.height - 5)
        CGContextAddArc(ctx, frame.width - 5, frame.height - 5, 5, CGFloat(0), CGFloat(1 / 2 * M_PI), 0)
        CGContextAddLineToPoint(ctx, 5, frame.height)
        CGContextAddArc(ctx, 5, frame.height - 5, 5, CGFloat(1 / 2 * M_PI), CGFloat(M_PI), 0)
        CGContextAddLineToPoint(ctx, 0, -5)
        CGContextStrokePath(ctx)
        
        super.drawRect(frame)
        
        self.addTarget(self, action: "check:", forControlEvents: UIControlEvents.TouchUpInside)
        
        rightLayer.frame = CGRectMake(bounds.width / 2 - 10, bounds.height / 2 - 10, 20, 20)
        rightLayer.setNeedsDisplay()
        layer.addSublayer(rightLayer)
    }
    
    func setChecked(flag: NSNumber){
        rightLayer.hidden = Bool(flag)
    }
    func check(sender: UIButton!) {
        rightLayer.hidden = !rightLayer.hidden
    }
}