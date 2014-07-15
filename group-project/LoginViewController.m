//
//  LoginViewController.m
//  bootcampWeek3
//
//  Created by Michael Sui on 6/30/14.
//  Copyright (c) 2014 Michael Austin Sui. All rights reserved.
//

#import "LoginViewController.h"
#import "homeViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *onTap;
@property (weak, nonatomic) IBOutlet UILabel *signupButton;
@property (weak, nonatomic) IBOutlet UIView *loginGroup;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;
@property (weak, nonatomic) IBOutlet UIView *micCover;

- (void)willShowKeyboard:(NSNotification *)notification;
- (void)willHideKeyboard:(NSNotification *)notification;

- (IBAction)onEditBegin:(id)sender;
- (IBAction)onTap:(id)sender;
- (IBAction)onLoginButton:(id)sender;

//- (void)updateValues;

@end

@implementation LoginViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willShowKeyboard:) name:UIKeyboardWillShowNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willHideKeyboard:) name:UIKeyboardWillHideNotification object:nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self updateValues];
    // Do any additional setup after loading the view from its nib.
    
    self.spinner.hidden = YES;
    
    //Hide the Log In button on load
    
    self.loginButton.hidden = YES;
    
    self.micCover.hidden = YES;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];

}

- (IBAction)onLoginButton:(id)sender {
    // Check to make sure button is clicking
    // NSLog(@"It got clicked!");
    // on tap up inside display loading spinner, set a timer for 2 sec
    
    self.micCover.hidden = NO;
    self.spinner.hidden = NO;
    [self.spinner startAnimating];
    [self performSelector:@selector(checkPassword) withObject:nil afterDelay:2];
    
    
}

-(void)checkPassword {
    
    self.spinner.hidden = YES;
    
    if([self.password.text isEqual:@"Dolly"]) {
        
        //If it's right then Switch View Controllers to show Home View Controller
        UIViewController *homeVC = [[homeViewController alloc] init];
        [self presentViewController:homeVC animated:YES completion:nil];
        
        
        
    }else {
        
        NSLog(@"wrong password");
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry, I can't find that" message:@"Please try again" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Okay", nil];
        
        [alertView show];
        
        self.micCover.hidden = NO;
    }
}


- (void)willShowKeyboard:(NSNotification *)notification {
    NSDictionary *userInfo = [notification userInfo];
    
    // Get the keyboard height and width from the notification
    // Size varies depending on OS, language, orientation
    CGSize kbSize = [[userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    NSLog(@"Height: %f Width: %f", kbSize.height, kbSize.width);
    
    // Get the animation duration and curve from the notification
    NSNumber *durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey];
    NSTimeInterval animationDuration = durationValue.doubleValue;
    NSNumber *curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey];
    UIViewAnimationCurve animationCurve = curveValue.intValue;
    
    // Move the view with the same duration and animation curve so that it will match with the keyboard animation
    [UIView animateWithDuration:animationDuration
                          delay:0.0
                        options:(animationCurve << 16)
                     animations:^{

                    self.signupButton.center = CGPointMake(self.signupButton.center.x, self.signupButton.center.y - 140);
                         
                    self.loginGroup.center = CGPointMake(self.loginGroup.center.x, self.loginGroup.center.y - 60);
                         
  
     }
                     completion:nil];
}

- (void)willHideKeyboard:(NSNotification *)notification {
    NSDictionary *userInfo = [notification userInfo];
    
    // Get the keyboard height and width from the notification
    // Size varies depending on OS, language, orientation
    CGSize kbSize = [[userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    NSLog(@"Height: %f Width: %f", kbSize.height, kbSize.width);
    
    // Get the animation duration and curve from the notification
    NSNumber *durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey];
    NSTimeInterval animationDuration = durationValue.doubleValue;
    NSNumber *curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey];
    UIViewAnimationCurve animationCurve = curveValue.intValue;
    
    // Move the view with the same duration and animation curve so that it will match with the keyboard animation
    [UIView animateWithDuration:animationDuration
                          delay:0.0
                        options:(animationCurve << 16)
                     animations:^{
                         
                     self.signupButton.center = CGPointMake(self.signupButton.center.x, self.signupButton.center.y + 140);
                         
                     self.loginGroup.center = CGPointMake(self.loginGroup.center.x, self.loginGroup.center.y + 60);

                         
                     }
                     completion:nil];
}

- (IBAction)onEditBegin:(id)sender {
    
        self.loginButton.hidden = NO;
    
}


@end
