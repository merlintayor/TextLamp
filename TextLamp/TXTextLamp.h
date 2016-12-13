//
//  TXTextLamp.h
//  TextLamp
//
//  Created by txx on 16/12/13.
//  Copyright © 2016年 txx. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    speedFast = 0,
    speedSlow,
    speedDefault,
}Speed;

@interface TXTextLamp : UIView

/**
 set text, default a text lamp demo
 */
@property(nonatomic,strong)NSString *text;

/**
 color of text,default red
 */
@property(nonatomic,strong)UIColor  *color;

/**
 font of text,default 15
 */
@property(nonatomic,strong)UIFont   *font;

/**
 速度
 */
@property(nonatomic,assign)Speed     speed;

-(instancetype)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)color font:(UIFont *)font speed:(Speed)speed;
@end
