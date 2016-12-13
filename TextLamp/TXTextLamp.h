//
//  TXTextLamp.h
//  TextLamp
//
//  Created by txx on 16/12/13.
//  Copyright © 2016年 txx. All rights reserved.
//

#import <UIKit/UIKit.h>

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

-(instancetype)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)color font:(UIFont *)font;
@end
