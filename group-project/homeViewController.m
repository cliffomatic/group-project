//
//  homeViewController.m
//  bootcampWeek3
//
//  Created by Michael Sui on 6/26/14.
//  Copyright (c) 2014 Michael Austin Sui. All rights reserved.
//

#import "homeViewController.h"

@interface homeViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activitySpinner;



@end

@implementation homeViewController

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

    //hide scroll view
    self.scrollView.hidden = YES;
    
    //show a spinner
    
    self.activitySpinner.hidden = NO;
    [self.activitySpinner startAnimating];
    
    //stay for 2 sec
    
    [self performSelector:@selector(cancelSpinner) withObject:nil afterDelay:2];
    
    self.scrollView.contentSize = CGSizeMake(320, 1000);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)cancelSpinner

{
    //spinner hide

    self.activitySpinner.hidden = YES;
    
    //show scroll view
    
    self.scrollView.hidden = NO;

}

@end
