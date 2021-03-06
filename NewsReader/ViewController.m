//
//  ViewController.m
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-05.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

@synthesize loginIndicator,fieldLogin,fieldPassword;

-(IBAction)loginButtonCliked:(UIButton *)theButton{
    [loginIndicator setHidden:NO];
}

-(IBAction)backgroundClick:(id)sender{
    [fieldLogin resignFirstResponder];
    [fieldPassword resignFirstResponder];
    NSLog(@"Click bg");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"bg-dark.png"]];
    self.view.backgroundColor = background;
    [background release];
    
//    UIColor *backgroundTxtField = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"textfield.png"]];
//    fieldLogin.backgroundColor = backgroundTxtField;
//    fieldPassword.backgroundColor = backgroundTxtField;
//    [backgroundTxtField release];
    UIView *paddingViewLogin = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 20)] autorelease];
    UIView *paddingViewPwd = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 20)] autorelease];
    fieldLogin.leftView = paddingViewLogin;
    fieldLogin.leftViewMode = UITextFieldViewModeAlways;
    fieldPassword.leftView = paddingViewPwd;
    fieldPassword.leftViewMode = UITextFieldViewModeAlways;
    
    [loginIndicator setHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLogin:(UIButton *)sender {
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"beeeeee");
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    NSLog(@"%@ | %@",fieldLogin.text,fieldPassword.text);
    if ([fieldLogin.text isEqualToString:@"demo"] && [fieldPassword.text isEqualToString:@"demo"]) {
        [loginIndicator setHidden:YES];
        return YES;
    }
    [loginIndicator setHidden:YES];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Your user name and password dowsn't match!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
    return NO;
}
@end
