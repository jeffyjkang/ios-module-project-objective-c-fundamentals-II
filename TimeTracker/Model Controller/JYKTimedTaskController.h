//
//  JYKTimedTaskController.h
//  TimeTracker
//
//  Created by Jeff Kang on 3/28/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
// forward class declaration
@class JYKTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface JYKTimedTaskController : NSObject

@property (nonatomic, readonly, copy) NSArray<JYKTimedTask *> *timedTasks;

- (void)createTimedTaskWith:(JYKTimedTask *)aTimedTask;

- (JYKTimedTask *)timedTaskAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
