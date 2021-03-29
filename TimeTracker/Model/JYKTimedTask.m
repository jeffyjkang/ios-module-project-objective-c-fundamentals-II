//
//  JYKTimedTask.m
//  TimeTracker
//
//  Created by Jeff Kang on 3/28/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import "JYKTimedTask.h"

@implementation JYKTimedTask

- (instancetype)initWithClient:(NSString *)aClient
                       summary:(NSString *)aSummary
                          rate:(double)aRate
                         hours:(double)aHours
//                         total:(double)aTotal
{
    if (self = [super init]) {
        _client = aClient.copy;
        _summary = aSummary.copy;
        _rate = aRate;
        _hours = aHours;
//        _total = aTotal;
    }
    return self;
}

- (double)total
{
    return _rate * _hours;
}

@end
