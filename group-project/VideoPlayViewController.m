//
//  VideoPlayViewController.m
//  group-project
//
//  Created by Cliff Curry on 7/14/14.
//  Copyright (c) 2014 Cliff Curry. All rights reserved.
//

#import "VideoPlayViewController.h"
#import "HCYoutubeParser.h"
#import "PBJVideoPlayerController.h"

@interface VideoPlayViewController ()

@property (nonatomic, strong) PBJVideoPlayerController *player;

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
    
    
    
    
    
    // Create the player and choose the size and position
//    self.player = [[PBJVideoPlayerController alloc] init];
//    self.player.view.frame = CGRectMake(0, 180, 320, 180);
//    
//    [self addChildViewController:self.player];
//    [self.view addSubview:self.player.view];
//    [self.player didMoveToParentViewController:self];
//    
//    
//    NSURL *url = [NSURL URLWithString:@"bbb.mp4"];
//    NSDictionary *videos = [HCYoutubeParser h264videosWithYoutubeURL:url];
//    
//    NSString *hdUrl = videos[@"hd720"];
//    NSString *mediumUrl = videos[@"medium"];
//    
//    self.player.videoPath = url;
//    [self.player playFromBeginning];
//    
    
    
    
    
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
