//
//  DatePickerViewController.m
//  DateCalc
//
//  Created by SteveLai on 13年4月13日.
//  Copyright (c) 2013年 SteveLai. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()

@end

@implementation DatePickerViewController


- (IBAction)setDateTime:(id)sender
{
     self.selectedDate = [self.datePicker date];
}

- (IBAction)dismissDatePicker:(id)sender
{
   
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
