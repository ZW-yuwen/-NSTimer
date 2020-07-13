//
//  ViewController.m
//  定时器
//
//  Created by 仲雯 on 2020/7/13.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//属性和成员变量的同步
@synthesize timerView = _timerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 40, 100);
    [btn setTitle:@"active" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(startPress) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UIButton *btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnStop.frame = CGRectMake(100, 200, 40, 100);
    [btnStop setTitle:@"stop" forState:UIControlStateNormal];
    
    [btnStop addTarget:self action:@selector(stopPress) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnStop];
    
    UIView * view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, 80, 80);
    view.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:view];
    
    view.tag = 101;
    
    
}
-(void) startPress{
    _timerView = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer:) userInfo:@"rose" repeats:YES];
}

-(void) updateTimer: (NSTimer *) timer{
    
    UIView* view = [self.view viewWithTag:101];
    
    view.frame = CGRectMake(view.frame.origin.x+1, view.frame.origin.y+1, 80, 80) ;
    
    NSLog(@"test %@ ", timer.userInfo);
}
-(void) stopPress {
    [_timerView invalidate];
    
}

@end
