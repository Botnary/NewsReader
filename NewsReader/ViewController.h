//
//  ViewController.h
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-05.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UIActivityIndicatorView * loginIndicator;
    IBOutlet UITextField * fieldLogin;
    IBOutlet UITextField * fieldPassword;
}

@property (assign) IBOutlet UIActivityIndicatorView * loginIndicator; 
@property (assign) IBOutlet UITextField * fieldLogin;
@property (assign) IBOutlet UITextField * fieldPassword;

-(IBAction)loginButtonCliked:(UIButton *)theButton;
-(IBAction)backgroundClick:(id)sender;

@end

