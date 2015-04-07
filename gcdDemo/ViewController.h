//
//  ViewController.h
//  gcdDemo
//
//  Created by 赵鸿博 on 15-4-7.
//  Copyright (c) 2015年 赵鸿博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *lab1;
    IBOutlet UILabel *lab2;
    
    NSString *string1;
    NSString *string2;
    
    dispatch_queue_t dispathQueue;
}

@property (retain, nonatomic) UILabel *lab1;
@property (retain, nonatomic) UILabel *lab2;

@property (retain, nonatomic) NSString *string1;
@property (retain, nonatomic) NSString *string2;


- (IBAction)buttonPress:(id)sender;

@end

