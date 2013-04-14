//
//  DatePickerViewController.h
//  DateCalc
//
//  Created by SteveLai on 13年4月13日.
//  Copyright (c) 2013年 SteveLai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface DatePickerViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UIButton *doneButton;
@property (strong, nonatomic) NSDate *selectedDate;

- (IBAction)setDateTime:(id)sender;
- (IBAction)dismissDatePicker:(id)sender;
@end
