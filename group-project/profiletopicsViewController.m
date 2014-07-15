//
//  profiletopicsViewController.m
//  braintubeProfile
//
//  Created by Josh Sassoon on 7/14/14.
//  Copyright (c) 2014 youtubeux. All rights reserved.
//

#import "profiletopicsViewController.h"

@interface profiletopicsViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *contentArea;

@end

@implementation profiletopicsViewController

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
    self.contentArea.contentSize = CGSizeMake(320, 1000);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
