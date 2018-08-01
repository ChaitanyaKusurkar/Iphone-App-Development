//
//  bookAppointment.m
//  Utility_Project
//
//  Created by Chaitanya on 4/1/16.
//  Copyright (c) 2016 UIS. All rights reserved.
//

#import "bookAppointment.h"
#import "appointmentDetails.h"

@interface bookAppointment ()

@end
NSDate *selectedDate;
@implementation bookAppointment
@synthesize timing;
@synthesize timing_array;


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
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [timing_array count];
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Timing"];
    if(cell== nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Timing"];
    }
    cell.textLabel.text=[timing_array objectAtIndex:indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"Your Appointment is booked on %@",[timing_array objectAtIndex:indexPath.row]] delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
    [alertview show];
    
    appointmentDetails  *appointment=[self.storyboard instantiateViewControllerWithIdentifier:@"appointmentDetails1"];
    appointment.date1= selectedDate;
    appointment.time1= [timing_array objectAtIndex:indexPath.row];
    
    [self.navigationController pushViewController:appointment animated:YES];
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

- (IBAction)bookAppointment:(id)sender {
    selectedDate=[_datePicker date];
    
    UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"Your Appointment is booked on date %@",selectedDate] delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
    [alertview show];
    timing_array=[[NSMutableArray alloc]initWithObjects:@"16:00-16:30",@"16:30-17:00",@"17:00-17:30",@"17-30-18:00",@"18:00-18:30", nil];
    [timing reloadData];
}
@end
