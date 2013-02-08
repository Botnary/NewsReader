//
//  NewsJSON.m
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-07.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import "NewsJSON.h"
#include "JSONKit.h"
#include "NewsItem.h"

@implementation NewsJSON

-(NSData *)read:(NSString*)theUrl{
    NSURL *url = [NSURL URLWithString:theUrl];
    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:url];
    [req setHTTPMethod:@"GET"];
    
    NSError *err = nil;
    NSHTTPURLResponse *res = nil;
    NSData *retData = [NSURLConnection sendSynchronousRequest:req returningResponse:&res error:&err];
    
    if (err)
    {
        //handle error
        NSLog(@"Response Error: @%@",err.description);
        return nil;
    }
    else
    {
        //handle response and returning data
        //NSLog(@"@%@",retData);
        NSLog(@"Este raspuns");
        return retData;
    }
}

-(NSMutableArray *)newsList:(NSString *)theUrl{
    NSData *data = [self read:theUrl];
    if(!data) return nil;
    JSONDecoder* decoder = [[JSONDecoder alloc] init];
    NSDictionary* listDictionary = [decoder objectWithData:data];
    NSArray* news =[listDictionary objectForKey:@"news"];
    NSMutableArray *list = [NSMutableArray arrayWithCapacity:[news count]+1];
    
    for (NSDictionary *item in news) {
        NSDictionary *itemDetails = [item objectForKey:@"item"];
        NewsItem *item = [[NewsItem alloc]initWith:[itemDetails objectForKey:@"headline"] :[itemDetails objectForKey:@"description"] :[itemDetails objectForKey:@"content"]];
        //NSLog(@"@%@",itemDetails);
        NSLog(@"HEADLINE: @%@",[itemDetails objectForKey:@"headline"]);
        //NSLog(@"DESCRIPTION: @%@",[itemDetails objectForKey:@"description"]);
        //NSLog(@"CONTENT: @%@",[itemDetails objectForKey:@"content"]);
        [list addObject:item];
    }
    return list;
}

@end
