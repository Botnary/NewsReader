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

@synthesize progress;

-(void)updateProgress:(float)theIndex{
    NSLog(@"@%f",theIndex);
    [progress setProgress:theIndex];
}

//-(void)onTick:(NSTimer *)timer {
//    float p = [progress progress];
//    if(p >= 1){
//        p = 0;
//    }else{
//        p += 0.1;
//    }
//    [self performSelectorOnMainThread:@selector(updateProgress:) withObject:[NSNumber numberWithFloat:p] waitUntilDone:NO];
//    NSLog(@"@%f",p);
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //NSLog(@"este");
    //[progress setProgress:0];
//    NSTimer * myTimer = [NSTimer scheduledTimerWithTimeInterval: 5.0
//                                                         target: self
//                                                       selector:@selector(onTick:)
//                                                       userInfo: nil repeats:YES];
    
    //[myTimer invalidate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end