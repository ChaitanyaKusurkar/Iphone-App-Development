//
//  doctorProfile.m
//  Utility_Project
//
//  Created by Chaitanya on 4/1/16.
//  Copyright (c) 2016 UIS. All rights reserved.
//

#import "doctorProfile.h"
#import "bookAppointment.h"

@interface doctorProfile ()

@end

@implementation doctorProfile
@synthesize property1;
@synthesize doctor_Name;
@synthesize doctor_Qualification;
@synthesize doctor_clinicAddress;
@synthesize doctor_phonenumber;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   doctor_Name.text=property1;
    if([doctor_Name.text isEqualToString:@"Dr. John"])
    {
        doctor_Qualification.text=@"MBBS, MS";
        doctor_phonenumber.text=@"9784569852";
        doctor_clinicAddress.text=@"Springfield,IL";
        
        
    }
    else if([doctor_Name.text isEqualToString:@"Dr. Alex"])
    {
        doctor_Qualification.text=@"MBBS, MS";
        doctor_phonenumber.text=@"9615445858";
        doctor_clinicAddress.text=@"Aurora,IL";
        
    }
    else if([doctor_Name.text isEqualToString:@"Dr. Flinch"])
    {
        doctor_Qualification.text=@"MBBS, MS";
        doctor_phonenumber.text=@"7852169465";
        doctor_clinicAddress.text=@"Champaign,IL";
    }
    else if([doctor_Name.text isEqualToString:@"Dr. Harry"])
    {
        doctor_Qualification.text=@"MS";
        doctor_phonenumber.text=@"3316489752";
        doctor_clinicAddress.text=@"Benton,IL";
        
    }
    else if([doctor_Name.text isEqualToString:@"Dr. Peter"])
    {
        doctor_Qualification.text=@"MS";
        doctor_phonenumber.text=@"2176548625";
        doctor_clinicAddress.text=@"ST. Louis,IL";
    }
    else if([doctor_Name.text isEqualToString:@"Dr. Kate"])
    {
        doctor_Qualification.text=@"MS";
        doctor_phonenumber.text=@"2175648788";
        doctor_clinicAddress.text=@"Springfield,IL";
    }
    else if([doctor_Name.text isEqualToString:@"Dr. James"])
    {
        doctor_Qualification.text=@"MBBS";
        doctor_phonenumber.text=@"9786169852";
        doctor_clinicAddress.text=@"Urbana,IL";
    }
    else if([doctor_Name.text isEqualToString:@"Dr. Tom"])
    {
        doctor_Qualification.text=@"MBBS";
        doctor_phonenumber.text=@"9994569852";
        doctor_clinicAddress.text=@"Chicago,IL";
        
    }
    else if([doctor_Name.text isEqualToString:@"Dr. Nelson"])
    {
        doctor_Qualification.text=@"MBBS";
        doctor_phonenumber.text=@"9784569482";
        doctor_clinicAddress.text=@"Normal,IL";
        
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)seeschedule:(id)sender {
    bookAppointment  *bookappointment1=[self.storyboard instantiateViewControllerWithIdentifier:@"seeSchedule"];
    
    [self.navigationController pushViewController:bookappointment1 animated:YES];

    
}
@end
