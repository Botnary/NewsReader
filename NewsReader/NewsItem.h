//
//  NewsItem.h
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-06.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsItem : NSObject{
    NSString *headline;
    NSString *description;
    NSString *content;
}

@property (assign) NSString *headline;
@property (assign) NSString *description;
@property (assign) NSString *content;

-(id)initWith:(NSString *)theHeadline:(NSString *)theDesctiption:(NSString *)theContent;

@end
