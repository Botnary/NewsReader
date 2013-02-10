//
//  NewsJSON.h
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-07.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsJSON : NSObject<UIAlertViewDelegate>{
    
}

-(NSData *)downloadFromUrl:(NSString*)theUrl;
-(NSMutableArray *)getNewsFromUrl:(NSString *)theUrl;

@end
