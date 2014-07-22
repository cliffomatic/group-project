//
//  BrainViewController.m
//  group-project
//
//  Created by Cliff Curry on 7/14/14.
//  Copyright (c) 2014 Cliff Curry. All rights reserved.
//

#import "MainViewController.h"
#import "VideoPlayViewController.h"



@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *vidgridImageView;
@property (weak, nonatomic) IBOutlet UIScrollView *vidgridScrollView;
@property (weak, nonatomic) IBOutlet UIView *vidContainerView;
@property (weak, nonatomic) IBOutlet UIButton *image01Btn;

- (IBAction)on01BtnClick:(id)sender;
@end

@implementation MainViewController

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
    
    self.vidgridScrollView.contentSize = CGSizeMake(872, 728);
    self.vidgridScrollView.contentOffset = CGPointMake(436, 122);
    self.vidgridImageView.frame = CGRectMake(0, 0, 872, 728);
    self.vidContainerView.frame = CGRectMake(0, 0, 872, 728);
    self.image01Btn.alpha   =.5;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)on01BtnClick:(id)sender {
    VideoPlayViewController *videoPlayView = [[VideoPlayViewController alloc] init];
    videoPlayView.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:videoPlayView animated:YES completion:nil];
    
}
@end
