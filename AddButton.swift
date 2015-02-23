//
//  AddButton.swift
//  SimpleTODO
//
//  Created by 沈一能 on 15/2/23.
//  Copyright (c) 2015年 Fluid. All rights reserved.
//

import UIKit

class AddButton: UIButton {

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
        
        CGContextMoveToPoint(ctx, 0, 10)
        CGContextAddLineToPoint(ctx, 20, 10)
        CGContextMoveToPoint(ctx, 10, 0)
        CGContextAddLineToPoint(ctx, 10, 20)
        CGContextStrokePath(ctx)
        
        CGContextStrokeRect(ctx, CGRectMake(0, 0, 20, 20))
        
        super.drawRect(frame)
    }
}
