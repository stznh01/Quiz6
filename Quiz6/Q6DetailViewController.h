//
//  Q6DetailViewController.h
//  Quiz6
//
//  Created by Hansen on 3/28/14.
//  Copyright (c) 2014 Zixuan Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@interface Q6DetailViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *taskLabel;
@property (weak, nonatomic) IBOutlet UITextField *taskNameField;
@property (weak, nonatomic) IBOutlet UILabel *urgencyLabel;
@property (weak, nonatomic) IBOutlet UILabel *dueDateLabel;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)changeUrgency:(id)sender;
- (IBAction)save:(id)sender;

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UISlider *urgencySlider;
@property (nonatomic, copy) void (^dismissBlock)(void);

//@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
