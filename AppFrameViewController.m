//
//  AppFrameViewController.m
//  group-project
//
//  Created by Cliff Curry on 7/15/14.
//  Copyright (c) 2014 Cliff Curry. All rights reserved.
//

#import "AppFrameViewController.h"

@interface AppFrameViewController ()
@property (weak, nonatomic) IBOutlet UIView *tabContentContainerView;
- (IBAction)onBrainBtn:(id)sender;
- (IBAction)onSearchBtn:(id)sender;
- (IBAction)onProfileBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *navBarView;



@end

@implementation AppFrameViewController

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
    [self onBrainBtn:nil];
    [self.view addSubview:self.navBarView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onBrainBtn:(id)sender {
    UIViewController *firstViewController = self.viewControllers[0];
    firstViewController.view.frame = self.tabContentContainerView.frame;
    [self.view addSubview:firstViewController.view];
    [self.view addSubview:self.navBarView];
}

- (IBAction)onSearchBtn:(id)sender {
    UIViewController *secondViewController = self.viewControllers[1];
    secondViewController.view.frame = self.tabContentContainerView.frame;
    [self.view addSubview:secondViewController.view];
    [self.view addSubview:self.navBarView];
}

- (IBAction)onProfileBtn:(id)sender {
    UIViewController *thirdViewController = self.viewControllers[2];
    thirdViewController.view.frame = self.tabContentContainerView.frame;
    [self.view addSubview:thirdViewController.view];
    [self.view addSubview:self.navBarView];
}




@end
