//
//  TXTextLamp1.m
//  TextLamp
//
//  Created by txx on 16/12/13.
//  Copyright © 2016年 txx. All rights reserved.
//

#import "TXTextLamp1.h"

@implementation TXTextLamp1

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        num=0;
        sFrame=frame;
    }
    return self;
}
- (void)drawRect:(CGRect)rect
{
    num+=0.5;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1.0);
    CGContextSetRGBFillColor (context, _stringColor.origin.x, _stringColor.origin.y, _stringColor.size.width, _stringColor.size.height);
    UIFont  *font = [UIFont boldSystemFontOfSize:_stringFont];
    [_text drawInRect:CGRectMake(num,0, 320, sFrame.size.height) withAttributes:@{font:NSFontAttributeName}];
    num=num>sFrame.size.width?-max:num;
}

-(void)updateLabel
{
    UIFont  *font = [UIFont boldSystemFontOfSize:_stringFont];
    max = [_text boundingRectWithSize:CGSizeMake(MAXFLOAT, sFrame.size.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil] context:nil].size.width;
    
    if(max<sFrame.size.width){return;}
    [self setNeedsDisplay];
    [self performSelector:@selector(updateLabel) withObject:nil afterDelay:0.01];
}
@end
