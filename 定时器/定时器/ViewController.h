//
//  ViewController.h
//  定时器
//
//  Created by 仲雯 on 2020/7/13.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *_timerView;
}

@property(retain, nonatomic) NSTimer* timerView;

@end

