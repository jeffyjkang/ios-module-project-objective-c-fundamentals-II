//
//  JYKTimedTaskController.m
//  TimeTracker
//
//  Created by Jeff Kang on 3/28/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import "JYKTimedTaskController.h"
#import "JYKTimedTask.h"

@interface JYKTimedTaskController() {
    NSMutableArray *_timedTasks;
}
@end

@implementation JYKTimedTaskController

- (instancetype)init
{
    if (self = [super init]) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (JYKTimedTask *)timedTaskAtIndex:(NSUInteger)index
{
    return [_timedTasks objectAtIndex:index];
}

- (void)createTimedTaskWith:(JYKTimedTask *)aTimedTask
{
    [_timedTasks addObject:aTimedTask];
}

@end
