//
//  ViewController.m
//  RSarna_calc
//
//  Created by Rahul Sarna on 04/03/14.
//  Copyright (c) 2014 Rahul Sarna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSDate *startDate,*endDate;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _startDate = [NSDate date];
    
    _endDate = [NSDate date];
    
    [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(displayDifference) userInfo:nil repeats:YES];
    
    
}

-(void) displayDifference{
    
    
    _startDate = [_startDatePicker date];
    
    _endDate = [_endDatePicker date];
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"'mm'/'dd'/'yyyy'"];
//    
//    
//    unsigned long unitFlags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSDayCalendarUnit | NSMonthCalendarUnit;
//    
//    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
//    
//    NSDateComponents *conversionInfo = [calendar components:unitFlags fromDate:_startDate  toDate:_endDate  options:0];
    
//    int months = [conversionInfo month];
//     int days = [conversionInfo day];
//    int hours = [conversionInfo hour];
//    int minutes = [conversionInfo minute];
    
//    _dateDifference.text = [NSString stringWithFormat:@"%d, %d, %d", days,conversionInfo.month,conversionInfo.year];
    
    NSTimeInterval secondsBetween = [_endDate timeIntervalSinceDate:_startDate];
    
     int numberOfDays = secondsBetween / 86400; // 60*60*24 Seconds in a day

    if(numberOfDays<0)
        numberOfDays*=-1;
    
    _dateDifference.text = [NSString stringWithFormat:@"%d",numberOfDays];

//    NSLog(@"%d",numberOfDays);

    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
