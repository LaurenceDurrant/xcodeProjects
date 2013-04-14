//
//  ViewController.m
//  DateCalc
//
//  Created by SteveLai on 13年4月13日.
//  Copyright (c) 2013年 SteveLai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) DatePickerViewController *datePickerVC;
@end

@implementation ViewController
@synthesize datePickerVisible;


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if (self.datePickerVC)
    {
        [self calcultionDateDifference:self.datePickerVC.selectedDate];
    }
}

- (IBAction)showDatePicker:(id)sender
{  
    [self performSegueWithIdentifier:@"toDatePicker" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    self.datePickerVC = (DatePickerViewController *)segue.destinationViewController;
}


-(void)calcultionDateDifference:(NSDate *)chosenDate
{
    NSDate *todayDate;
    NSString *differenceOuput;
    NSString *todayDateString;
    NSString *chosenDateString;
    NSDateFormatter *dateFormat;
    NSTimeInterval difference;
    
    todayDate = [NSDate date];
    difference = [todayDate timeIntervalSinceDate:chosenDate] / 86400;  //秒轉日
    
    dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"MMMM d, yyyy hh:mm:ssa"];
    todayDateString = [dateFormat stringFromDate:todayDate];
    chosenDateString = [dateFormat stringFromDate:chosenDate];
    
    differenceOuput = [[NSString alloc] initWithFormat:
                       @"Difference between chosen date (%@) and today(%@) in days: %1.2f", chosenDateString, todayDateString, fabs(difference) ];
    self.outPutLabel.text = differenceOuput;
}
@end
