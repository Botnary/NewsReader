//
//  NewsItem.m
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-06.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import "NewsItem.h"
@implementation NewsItem
@synthesize headline;
@synthesize description;
@synthesize content;

-(id)init{
    self = [super init];
    
    if (self != nil)
    {
        [self setHeadline:@"Default headline"];
        [self setDescription:@"Default description"];
        [self setContent:@"Default content"];
    }
    
    return self;
}

-(id)initWith:(NSString *)theHeadline :(NSString *)theDesctiption :(NSString *)theContent{
    self.headline = theHeadline;
    self.description = theDesctiption;
    self.content = theContent;
    return self;
}

@end
