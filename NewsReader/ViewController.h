//
//  ViewController.h
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-05.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
   IBOutlet UIProgressView * progress;
}
@property (retain) UIProgressView *progress;

-(void)updateProgress:(float)theIndex;
@end