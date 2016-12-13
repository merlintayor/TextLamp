//
//  TXTextLamp.m
//  TextLamp
//
//  Created by txx on 16/12/13.
//  Copyright © 2016年 txx. All rights reserved.
//

#import "TXTextLamp.h"

@interface TXTextLamp()
{
    //text size
    CGSize _size;
}
@property(nonatomic,strong)UIImageView *imageView;
/**
 是下面三个控件的父视图
 */
@property(nonatomic,strong)UIView      *view;
@property(nonatomic,strong)UILabel     *label1 ;
/**
 占位View
 */
@property(nonatomic,strong)UIView      *viewGap;
@property(nonatomic,strong)UILabel     *label2 ;

@end

@implementation TXTextLamp

-(instancetype)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)color font:(UIFont *)font speed:(Speed)speed
{
    self = [super initWithFrame:frame];
    if (self) {
        self.clipsToBounds = YES ;
        _text = text ;
        _color = color;
        _font = font ;
        _size = [text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil]];
        _speed = speed;
        //如果给定宽高大于size时，size=给定宽高
        if (_size.width < frame.size.width) {
            _size.width = frame.size.width;
        }
        if (_size.height < frame.size.height) {
            _size.height = frame.size.height;
        }
        
        
        [self addSubview:self.imageView];
        [self addSubview:self.view];
        
        [self animation];

    }
    return self ;
}
-(void)animation
{
    CGRect rect1 = _label1.frame ;
    CGRect rect2 = _label2.frame;
    CGRect rect3 = _viewGap.frame ;
    
    NSTimeInterval interval ;
    switch (_speed) {
        case speedDefault:
        {
            interval = 4;
            break;
        }
        case speedFast:
        {
            interval = 2;
            break;
        }
        case speedSlow:
        {
            interval = 8;
            break;
        }
        default:
            break;
    }
    [UIView animateWithDuration:interval delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat animations:^{
        _label1.frame = CGRectMake(-_size.width-50, 0,_size.width,_size.height);
        _viewGap.frame = CGRectMake(-50, 0, 50, _size.height);
        _label2.frame = rect1;
        
    } completion:^(BOOL finished) {
        _label1.frame = rect1 ;
        _label2.frame = rect2;
        _viewGap.frame = rect3 ;
        
    }];
}
-(UILabel *)label1
{
    if (!_label1) {
        _label1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, _size.width, _size.height)];
        _label1.text = _text ;
        _label1.font = _font ;
        _label1.clipsToBounds = YES ;
        _label1.textAlignment = NSTextAlignmentCenter;
        _label1.textColor = _color ;
    }
    return _label1 ;
}
-(UIView *)viewGap
{
    if (!_viewGap) {
        _viewGap = [[UIView alloc]initWithFrame:CGRectMake(_size.width, 0, 50, _size.height)];
    }
    return _viewGap ;
}
-(UILabel *)label2
{
    if (!_label2) {
        _label2 = [[UILabel alloc]initWithFrame:CGRectMake(_size.width+50, 0, _size.width, _size.height)];
        _label2.text = _text ;
        _label2.font = _font ;
        _label2.clipsToBounds = YES ;
        _label2.textAlignment = NSTextAlignmentCenter;
        _label2.textColor = _color ;
    }
    return _label2 ;
}
-(UIImageView *)imageView
{
    if (!_imageView) {
        _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, _size.height, _size.height)];
        _imageView.image = [UIImage imageNamed:@"1"];
    }
    return _imageView ;
}
-(UIView *)view
{
    if (!_view) {
        _view = [[UIView alloc]initWithFrame:CGRectMake(_size.height, 0, _size.width, _size.height)];
        [_view addSubview:self.label1];
        [_view addSubview:self.viewGap];
        [_view addSubview:self.label2];
        _view.clipsToBounds = YES ;
    }
    return _view ;
}
@end
