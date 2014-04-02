//
//  Task.m
//  Quiz5
//
//  Created by Hansen on 3/17/14.
//  Copyright (c) 2014 Zixuan Huang. All rights reserved.
//

#import "Task.h"

@implementation Task
- (instancetype) init {
    self = [super init];
    if (self) {
        self.dueDate = [NSDate date];
        self.urgency = 5.0;
        self.taskName = @"New Task"; // Initial in master view controller to update number
    }
    return self;
}
@end
