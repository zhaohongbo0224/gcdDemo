//
//  ViewController.m
//  gcdDemo
//
//  Created by 赵鸿博 on 15-4-7.
//  Copyright (c) 2015年 赵鸿博. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

void (^tFun1)(UILabel *, NSString *) = ^(UILabel *lab, NSString *src){
    sleep(2);
    
    dispatch_async(dispatch_get_main_queue(), ^(void){
        [lab setText:src];
    });
    
};

void (^tFun2)(UILabel *, NSString *) = ^(UILabel *lab, NSString *src){
    sleep(4);
    
    dispatch_async(dispatch_get_main_queue(), ^(void){
        [lab setText:src];
    });
    
};

@implementation ViewController

@synthesize lab1;
@synthesize lab2;

@synthesize string1;
@synthesize string2;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPress:(id)sender{
//    sleep(4);
//    string1 = @"1 Go";
//    [lab1 setText:string1];
//    
//    sleep(4);
//    string2 = @"2 Go";
//    [lab2 setText:string2];
    dispathQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(dispathQueue, ^{tFun1(self.lab1, @"1 Go");});
    dispatch_async(dispathQueue, ^{tFun2(self.lab2, @"2 Go");});
}

@end
