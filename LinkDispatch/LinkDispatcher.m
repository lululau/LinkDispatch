//
//  LinkDispatcher.m
//  LinkDispatch
//
//  Created by 刘 向 on 15/1/17.
//  Copyright (c) 2015年 刘 向. All rights reserved.
//

#import "LinkDispatcher.h"

@implementation LinkDispatcher
- (void)getUrl:(NSAppleEventDescriptor *)event withReplyEvent:(NSAppleEventDescriptor *)replyEvent {
    NSString *urlStr = [[event paramDescriptorForKeyword:keyDirectObject] stringValue];
    [NSTask launchedTaskWithLaunchPath: [@"~/.linkdispatch" stringByExpandingTildeInPath] arguments:[NSArray arrayWithObject:urlStr]];
    exit(0);
}
@end
