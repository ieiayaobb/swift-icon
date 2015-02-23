//
//  SlideLayer.swift
//  SimpleTODO
//
//  Created by 沈一能 on 15/2/21.
//  Copyright (c) 2015年 Fluid. All rights reserved.
//

import UIKit

class SlideLayer: CALayer {
    override func drawInContext(ctx: CGContext!) {
        CGContextSetLineWidth(ctx, 2)
        CGContextSetStrokeColorWithColor(ctx, UIColor.whiteColor().CGColor)
        
        CGContextBeginPath(ctx)
        CGContextMoveToPoint(ctx, 0, 20)
        CGContextAddLineToPoint(ctx, 50, 20)
        CGContextStrokePath(ctx)
        
        CGContextSetLineWidth(ctx, 3)
        CGContextBeginPath(ctx)
        CGContextAddArc(ctx, 25, 20 , 8, CGFloat(0.0), CGFloat(2 * M_PI), 1)
        CGContextStrokePath(ctx)
        
        CGContextSetStrokeColorWithColor(ctx, UIColor.blackColor().CGColor)
        CGContextBeginPath(ctx)
        CGContextAddArc(ctx, 25, 20 , 8, CGFloat(0.0), CGFloat(2 * M_PI), 1)
        CGContextFillPath(ctx)
    }
}
