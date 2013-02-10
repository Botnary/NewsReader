//
//  ItemViewController.m
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-10.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import "ItemViewController.h"

@interface ItemViewController ()

@end

@implementation ItemViewController

@synthesize webContainer;

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
	// Do any additional setup after loading the view.
    [webContainer loadHTMLString:@"<h1>Test</h2>" baseURL:[NSURL URLWithString:@"#"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [webContainer release];
    [super dealloc];
}
@end
