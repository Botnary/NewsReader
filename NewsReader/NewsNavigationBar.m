//
//  NewsNavigationBar.m
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-08.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import "NewsNavigationBar.h"

@implementation NewsNavigationBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIImage * backgroundImage = [UIImage imageNamed:@"bar-bg.png"];
    [backgroundImage drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    //NSLog(@"@%f",self.frame.size.height);
}


@end
