//
//  profilemainViewController.m
//  braintubeProfile
//
//  Created by Josh Sassoon on 7/14/14.
//  Copyright (c) 2014 youtubeux. All rights reserved.
//

#import "profilemainViewController.h"

@interface profilemainViewController ()
@property (weak, nonatomic) IBOutlet UIView *contentView;
- (IBAction)firstButton:(id)sender;
- (IBAction)secondButton:(id)sender;
- (IBAction)thirdButton:(id)sender;

@end

@implementation profilemainViewController

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
    [self firstButton:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)firstButton:(id)sender {
    UIViewController *firstViewController = self.viewControllers[0];
    firstViewController.view.frame = self.contentView.frame;
    [self.view addSubview:firstViewController.view];
}

- (IBAction)secondButton:(id)sender {
    UIViewController *secondViewController = self.viewControllers[1];
    secondViewController.view.frame = self.contentView.frame;
    [self.view addSubview:secondViewController.view];
}

- (IBAction)thirdButton:(id)sender {
    UIViewController *thirdViewController = self.viewControllers[2];
    thirdViewController.view.frame = self.contentView.frame;
    [self.view addSubview:thirdViewController.view];
}
@end
