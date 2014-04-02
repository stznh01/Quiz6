//
//  Task.h
//  Quiz5
//
//  Created by Hansen on 3/17/14.
//  Copyright (c) 2014 Zixuan Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject
@property (nonatomic) float urgency;
@property (weak,nonatomic) NSDate *dueDate;
@property (weak,nonatomic) NSString *taskName;
@end
