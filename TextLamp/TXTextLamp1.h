//
//  TXTextLamp1.h
//  TextLamp
//
//  Created by txx on 16/12/13.
//  Copyright © 2016年 txx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TXTextLamp1 : UIView

{
    float num;
    float max;
    CGRect sFrame;
}
@property(nonatomic,retain)NSString *text;
@property(nonatomic,assign)CGRect    stringColor;
@property(nonatomic,assign)CGFloat   stringFont;
-(void)updateLabel;

@end
