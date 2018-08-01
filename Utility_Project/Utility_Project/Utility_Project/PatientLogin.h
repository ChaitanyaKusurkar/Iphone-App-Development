//
//  PatientLogin.h
//  Utility_Project
//
//  Created by Chaitanya on 3/30/16.
//  Copyright (c) 2016 UIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PatientLogin.h"

@interface PatientLogin : UIViewController
@property (weak, nonatomic) IBOutlet UIPickerView *doctorCategory;
@property (weak, nonatomic) IBOutlet UITableView *doc_table_outlet;
- (IBAction)selectDoctor:(id)sender;
@property (nonatomic,retain)NSArray *doctorList;
@property (nonatomic,retain) NSMutableArray *doc_List;
@end
