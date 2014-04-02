//
//  Q6DetailViewController.m
//  Quiz6
//
//  Created by Hansen on 3/28/14.
//  Copyright (c) 2014 Zixuan Huang. All rights reserved.
//

#import "Q6DetailViewController.h"

@interface Q6DetailViewController ()
- (void)configureView;
@end

@implementation Q6DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        //[self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        [self.taskLabel setText:[self.detailItem taskName]];
        [self.urgencySlider setValue:[self.detailItem urgency]];
        [self.urgencyLabel setText:[NSString stringWithFormat:@"%.0f", [_urgencySlider value]]];
        [self.datePicker setDate:[self.detailItem dueDate]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.taskNameField setDelegate:self];
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeUrgency:(id)sender {
    UISlider *s = sender;
    [self.detailItem setUrgency:s.value];
    [[self urgencyLabel] setText:[NSString stringWithFormat:@"%.0f",_urgencySlider.value]];
}

- (IBAction)save:(id)sender {
    [self.detailItem setUrgency:[self.urgencySlider value]];
    [self.detailItem setTaskName:[self.taskLabel text]];
    [self.detailItem setDueDate:[self.datePicker date]];
    [self.presentingViewController dismissViewControllerAnimated:YES completion:[self dismissBlock]];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
@end
