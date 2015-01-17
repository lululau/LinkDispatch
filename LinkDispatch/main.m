//
//  main.m
//  LinkDispatch
//
//  Created by 刘 向 on 15/1/17.
//  Copyright (c) 2015年 刘 向. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "LinkDispatcher.h"

int main(int argc, const char * argv[]) {
    ProcessSerialNumber psn = { 0, kCurrentProcess };
    TransformProcessType(&psn, kProcessTransformToBackgroundApplication);
    
    LinkDispatcher *dispatcher = [[LinkDispatcher alloc] init];
    
    NSAppleEventManager *em = [NSAppleEventManager sharedAppleEventManager];
    [em setEventHandler:dispatcher andSelector:@selector(getUrl:withReplyEvent:) forEventClass:kInternetEventClass andEventID:kAEGetURL];
    
    return NSApplicationMain(argc, argv);
}
