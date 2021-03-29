//
//  JYKTimedTask.h
//  TimeTracker
//
//  Created by Jeff Kang on 3/28/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JYKTimedTask : NSObject

@property (nonatomic, readonly, copy) NSString *client;
@property (nonatomic, readonly, copy) NSString *summary;
@property (nonatomic, readonly) double rate;
@property (nonatomic, readonly) double hours;
@property (nonatomic, readonly) double total;

// init
- (instancetype)initWithClient:(NSString *)aClient
                       summary:(NSString *)aSummary
                          rate:(double)aRate
                         hours:(double)aHours;
//                         total:(double)aTotal;

@end

NS_ASSUME_NONNULL_END
