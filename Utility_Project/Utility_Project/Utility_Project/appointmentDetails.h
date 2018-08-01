//
//  appointmentDetails.h
//  Utility_Project
//
//  Created by Chaitanya on 4/1/16.
//  Copyright (c) 2016 UIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface appointmentDetails : UIViewController
@property (nonatomic,retain)NSDate *date1;
@property (nonatomic,retain)NSMutableString *time1;
@property (weak, nonatomic) IBOutlet UILabel *details;
@end
