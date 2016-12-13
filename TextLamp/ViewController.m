//
//  ViewController.m
//  TextLamp
//
//  Created by txx on 16/12/13.
//  Copyright © 2016年 txx. All rights reserved.
//

#import "ViewController.h"
#import "TXTextLamp.h"
#import "TXTextLamp1.h"

@interface ViewController ()

@property(nonatomic,strong)UILabel *scrollLabel;

@property(nonatomic,strong)UILabel *secondLabel;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TXTextLamp *lamp = [[TXTextLamp alloc]initWithFrame:CGRectMake(50, 100, 100, 50) text:@"a text lamp demo " textColor:[UIColor redColor] font:[UIFont systemFontOfSize:20]];
    [self.view addSubview:lamp];
    
    
    TXTextLamp1* label=[[TXTextLamp1 alloc] initWithFrame:CGRectMake(0, 200, 100, 30)];
    label.backgroundColor=[UIColor clearColor];
    label.stringColor=CGRectMake(0, 0, 0, 1);
    label.text = @"上海银路投资管理有限公司";
    label.stringFont=25.0;
    [self.view addSubview:label];
    [label updateLabel];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
