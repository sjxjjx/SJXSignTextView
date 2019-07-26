//
//  SJXSignTextView.m
//  TestDemo
//
//  Created by Sjx on 2019/7/27.
//  Copyright © 2019 zhl. All rights reserved.
//

#import "SJXSignTextView.h"

@implementation SJXSignTextView

- (instancetype)init {
    if (self = [super init]) {
        self.directionType = TextDirectionTypeRight;
        self.backgroundColor = [UIColor clearColor];
        self.textColor = [UIColor whiteColor];
        self.bgColor = [UIColor redColor];
        self.textFont = 8.f;
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.directionType = TextDirectionTypeRight;
    self.backgroundColor = [UIColor clearColor];
    self.textColor = [UIColor whiteColor];
    self.bgColor = [UIColor redColor];
    self.textFont = 8.f;
}

- (void)setText:(NSString *)text {
    _text = text;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //背景颜色设置
    [[UIColor clearColor] set];
    
    if (self.directionType == TextDirectionTypeRight) {
        CGContextMoveToPoint(context, rect.size.width * 0.5, 0);
        CGContextAddLineToPoint(context, rect.size.width, rect.size.height * 0.5);
        CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
        CGContextAddLineToPoint(context, 0, 0);
        
        CGContextSetFillColorWithColor(context, self.bgColor.CGColor);
        CGContextDrawPath(context, kCGPathFillStroke);
        
        //保存初始状态（压栈操作，保存一份当前图形上下文）
        CGContextSaveGState(context);
        //图形上下文移动{x,y}
        CGContextTranslateCTM(context, rect.size.width * 0.65, -rect.size.height * 0.3);
        //旋转
        CGContextRotateCTM(context, M_PI_4);
        
    } else {
        CGContextMoveToPoint(context, rect.size.width * 0.5, 0);
        CGContextAddLineToPoint(context, rect.size.width, 0);
        CGContextAddLineToPoint(context, 0, rect.size.height);
        CGContextAddLineToPoint(context, 0, rect.size.height * 0.5);
        
        CGContextSetFillColorWithColor(context, self.bgColor.CGColor);
        CGContextDrawPath(context, kCGPathFillStroke);
        
        //保存初始状态（压栈操作，保存一份当前图形上下文）
        CGContextSaveGState(context);
        //图形上下文移动{x,y}
        CGContextTranslateCTM(context, -rect.size.width * 0.3, rect.size.height * 0.35);
        //旋转
        CGContextRotateCTM(context, -M_PI_4);
        
    }
    
    //需要绘制的文字
    UILabel *lb = [[UILabel alloc] init];
    lb.bounds = CGRectMake(0, 0, rect.size.width, rect.size.height * 0.5);
    lb.text = self.text;
    lb.textColor = self.textColor;
    lb.textAlignment = NSTextAlignmentCenter;
    lb.font = [UIFont boldSystemFontOfSize:self.textFont];
    
    [lb drawTextInRect:rect];
    //恢复到初始状态（出栈操作，恢复一份当前图形上下文）
    CGContextRestoreGState(context);
    
}

@end
