//
//  VideoPlayViewController.m
//  group-project
//
//  Created by Cliff Curry on 7/14/14.
//  Copyright (c) 2014 Cliff Curry. All rights reserved.
//

#import "VideoPlayViewController.h"

@interface VideoPlayViewController ()
- (IBAction)onCloseClick:(id)sender;

@end

@implementation VideoPlayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCloseClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
