//
//  bookAppointment.h
//  Utility_Project
//
//  Created by Chaitanya on 4/1/16.
//  Copyright (c) 2016 UIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bookAppointment : UIViewController
- (IBAction)bookAppointment:(id)sender;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITableView *timing;
@property (nonatomic,retain)NSMutableArray *timing_array;

@end
