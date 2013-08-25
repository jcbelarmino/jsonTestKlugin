//
//  KJTViewController.m
//  jsontest
//
//  Created by Jader Belarmino on 24/08/13.
//  Copyright (c) 2013 velum. All rights reserved.
//

#import "KJTViewController.h"
#import "JsonTest.h"

@interface KJTViewController ()

@end

@implementation KJTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Do any additional setup after loading the view, typically from a nib.
    JsonTest* jsonTest = [[JsonTest alloc] init];
    
    NSString* wut = [jsonTest getjSon];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
