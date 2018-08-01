//
//  doctorProfile.h
//  Utility_Project
//
//  Created by Chaitanya on 4/1/16.
//  Copyright (c) 2016 UIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface doctorProfile : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *doctor_Name;
@property (weak, nonatomic) IBOutlet UILabel *doctor_Qualification;

@property (weak, nonatomic) IBOutlet UILabel *doctor_clinicAddress;
@property (weak, nonatomic) IBOutlet UILabel *doctor_phonenumber;
@property (weak, nonatomic) IBOutlet UIButton *bookAppointment;
- (IBAction)seeschedule:(id)sender;

@property (nonatomic,retain)NSMutableString *property1;
@end
