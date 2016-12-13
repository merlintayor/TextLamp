//
//  ViewController.m
//  TextLamp
//
//  Created by txx on 16/12/13.
//  Copyright © 2016年 txx. All rights reserved.
//

#import "ViewController.h"
#import "TXTextLamp.h"

@interface ViewController ()

@property(nonatomic,strong)UILabel *scrollLabel;

@property(nonatomic,strong)UILabel *secondLabel;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TXTextLamp *lamp = [[TXTextLamp alloc]initWithFrame:CGRectMake(50, 100, 100, 50) text:@"a text lamp demo " textColor:[UIColor redColor] font:[UIFont systemFontOfSize:20]];
//    lamp.backgroundColor = [UIColor grayColor];
    [self.view addSubview:lamp];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
