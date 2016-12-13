//
//  TXTextLamp.m
//  TextLamp
//
//  Created by txx on 16/12/13.
//  Copyright © 2016年 txx. All rights reserved.
//

#import "TXTextLamp.h"

@interface TXTextLamp()

@property(nonatomic,strong)UILabel *label1 ;
@property(nonatomic,strong)UILabel *label2 ;

@end

@implementation TXTextLamp

-(instancetype)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)color font:(UIFont *)font
{
    self = [super initWithFrame:frame];
    if (self) {
        self.clipsToBounds = YES ;
        _text = text ;
        _color = color;
        _font = font ;
        [self addSubview:self.label1];
        [self addSubview:self.label2];
        
        CGRect rect1 = _label1.frame ;
        CGRect rect2 = _label2.frame;
    
        [UIView animateWithDuration:4 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat animations:^{
            _label1.frame = CGRectMake(-rect1.size.width, 0,rect1.size.width,rect1.size.height);
            _label2.frame = rect1;
    
        } completion:^(BOOL finished) {
            _label1.frame = rect1 ;
            _label2.frame = rect2;
    
        }];

    }
    return self ;
}
-(UILabel *)label1
{
    if (!_label1) {
    CGSize size = [_text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:_font,NSFontAttributeName, nil]];
        _label1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, size.width, size.height)];
        _label1.text = _text ;
        _label1.font = _font ;
        _label1.clipsToBounds = YES ;
        _label1.textColor = _color ;
    }
    return _label1 ;
}
-(UILabel *)label2
{
    if (!_label2) {
        CGSize size = [_text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:_font,NSFontAttributeName, nil]];
        _label2 = [[UILabel alloc]initWithFrame:CGRectMake(size.width, 0, size.width, size.height)];
        _label2.text = _text ;
        _label2.font = _font ;
        _label2.clipsToBounds = YES ;
        _label2.textColor = _color ;
    }
    return _label2 ;
}

@end
