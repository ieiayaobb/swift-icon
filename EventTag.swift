//
//  EventTag.swift
//  SimpleTODO
//
//  Created by 沈一能 on 15/2/21.
//  Copyright (c) 2015年 Fluid. All rights reserved.
//

import UIKit

class EventTag:UIView {
    var tagColor:UIColor = UIColor.whiteColor()
    override init(frame: CGRect){
        super.init(frame: frame)

        backgroundColor = UIColor.blackColor()

    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func drawRect(frame: CGRect)
    {
        var ctx:CGContextRef = UIGraphicsGetCurrentContext()
        UIGraphicsPushContext(ctx)
        CGContextSetLineWidth(ctx, 1.0)
        CGContextSetFillColorWithColor(ctx, tagColor.CGColor)
        CGContextSetStrokeColorWithColor(ctx, tagColor.CGColor)

        CGContextMoveToPoint(ctx, 0, 10)
        CGContextAddLineToPoint(ctx, 10, 0)
        CGContextAddLineToPoint(ctx, 50, 0)
        CGContextAddLineToPoint(ctx, 50, 20)
        CGContextAddLineToPoint(ctx, 10, 20)
        CGContextFillPath(ctx)

        super.drawRect(frame)
    }
}
