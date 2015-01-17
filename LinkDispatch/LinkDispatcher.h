//
//  LinkDispatcher.h
//  LinkDispatch
//
//  Created by 刘 向 on 15/1/17.
//  Copyright (c) 2015年 刘 向. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkDispatcher : NSObject
- (void)getUrl:(NSAppleEventDescriptor *)event withReplyEvent:(NSAppleEventDescriptor *)replyEvent;
@end
