//
//  ViewController.m
//  SwiftReminder
//
//  Created by 0xack13 on 10/25/14.
//  Copyright (c) 2014 0xack13. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)buttonPressed:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   

    /*
	
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Salawat" ofType:@"plist"]];
    NSLog(@"dictionary = %@", dictionary);
    
    NSArray * allKeys = [dictionary allKeys];
    NSLog(@"Count : %d", [allKeys count]);
    
    NSArray *array = [dictionary objectForKey:@"3"];
    NSLog(@"array = %@", array);
    
    int fromNumber = 0;
    int toNumber = [allKeys count] - 1;
    int randomNumber = (arc4random()%(toNumber-fromNumber))+fromNumber;
    NSString *string = [NSString stringWithFormat:@"%d", randomNumber];

    NSString *msg= [dictionary valueForKey:string];
    
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:5];
    localNotification.alertBody = @"Testing";
    localNotification.alertAction = @"View"; //title of action button
    localNotification.hasAction = YES;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    localNotification.applicationIconBadgeNumber = 10;
    localNotification.repeatInterval = NSSecondCalendarUnit;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    /*
    UIAlertView *notificationAlert = [[UIAlertView alloc] initWithTitle:@"SALAWAT"    message:msg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    /*
    for (NSString *s in array) {
        [notificationAlert addButtonWithTitle:s];
    }*/
    
    //[notificationAlert show];
    
}

- (void)viewWillAppear:(BOOL)animated {

    
}

- (void)setupLocalNotifications {
    
    //Get timer
    NSString *rTimer = [[NSUserDefaults standardUserDefaults] objectForKey:@"repeatTimer"];
    //Convert NSString to int
    int rTimerValue = rTimer;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Salawat" ofType:@"plist"]];
    NSLog(@"dictionary = %@", dictionary);
    
    NSArray * allKeys = [dictionary allKeys];
    NSLog(@"Count : %d", [allKeys count]);
    
    NSArray *array = [dictionary objectForKey:@"3"];
    NSLog(@"array = %@", array);
    
    int fromNumber = 0;
    int toNumber = [allKeys count] - 1;
    int randomNumber = (arc4random()%(toNumber-fromNumber))+fromNumber;
    NSString *string = [NSString stringWithFormat:@"%d", randomNumber];
    
    NSString *msg= [dictionary valueForKey:string];

    
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
    
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    
    // current time plus 10 secs
    NSDate *now = [NSDate date];
    NSDate *date = now;
    
    NSLog(@"now time: %@", now);
    //NSLog(@"fire time: %@", dateToFire);
    
    NSDate *repeatTime = [date dateByAddingTimeInterval:rTimerValue];
    localNotification.fireDate = repeatTime; //dateToFire;
    localNotification.alertBody = msg; //@"Time to get up!";
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    localNotification.applicationIconBadgeNumber = 1; // increment
    localNotification.repeatInterval = NSSecondCalendarUnit;

    
    NSDictionary *infoDict = [NSDictionary dictionaryWithObjectsAndKeys:@"Object 1", @"Key 1", @"Object 2", @"Key 2", nil];
    localNotification.userInfo = infoDict;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showAlert { UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"You ran out of time" delegate:self cancelButtonTitle:@"Return" otherButtonTitles:nil]; [alert show];
}



- (IBAction)buttonPressed:(id)sender {
    
    /*
     Repeat daily at 5pm:
     
     
     NSDateFormatter *dat= [[NSDateFormatter alloc]init];
     [dat setLocale:[NSLocale currentLocale]];
     [dat setTimeZone:[NSTimeZone systemTimeZone]];
     
     //[dat setDateFormat:@"YYYY-MM-dd"];// YYYY-MM-dd hh:mm a
     //NSString *dateM=[dat stringFromDate:datM];
     //[dat setDateFormat:@"YYYY-MM-dd h:mm a"];
     NSDate *reminderDate=[NSDate date];
     reminderDate =[reminderDate dateByAddingTimeInterval:1*24*60*60];
     
     UILocalNotification  *missingDreamNotify=[[UILocalNotification alloc]init];
     missingDreamNotify.fireDate=reminderDate;
     missingDreamNotify.timeZone = [NSTimeZone defaultTimeZone];
     missingDreamNotify.alertBody = @"Reminder is set";
     missingDreamNotify.alertAction = @"Show me";
     missingDreamNotify.soundName = UILocalNotificationDefaultSoundName;
     missingDreamNotify.applicationIconBadgeNumber = 1;
     missingDreamNotify.repeatInterval = NSDayCalendarUnit;
     
     [[UIApplication sharedApplication] scheduleLocalNotification:missingDreamNotify];
     
     
     */
    NSString * f = @"اللهم صلِّ وسلم وبارك على سيدنا محمد وعلى آل سيدنا محمد قطب السيادة والمجد والفخار ، وخير من تهجد لربه آناء الليل وأطراف النهار .";
    NSString * b = @"اللهم صلِّ وسلم وبارك على سيدنا محمد وعلى آل سيدنا محمد عين سر الوجود بلسان كل معدوم وموجود ، من حباه الله وأكرمه بمنةٍ وعطاءٍ وفضلٍ وجودٍ .";
    NSString * z = @"اللهم صلِّ وسلم وبارك على سيدنامحمد وعلى آل سيدنا محمد خير من أقتبست منه بدور الكائنات ضياءها ، وبه سائر المخلوقات لم تقطع من الله يوم القيامة رجاءها .";
    NSString * c = @" اللهم صل وسلم على سيدنا محمد البشير المُبَشِّر للعاملين بما قال الله العظيم (أنِّي لاَ أُضِيعُ عَمَلَ عَامِلٍ مِّنكُم مِّن ذَكَرٍ أَوْ أُنثَى) وبما قال (مَنْ عَمِلَ صَالِحًا مِّن ذَكَرٍ أَوْ أُنثَى وَهُوَ مُؤْمِنٌ فَأُوْلَئِكَ يَدْخُلُونَ الْجَنَّةَ يُرْزَقُونَ فِيهَا بِغَيْرِ حِسَابٍ).";
    NSArray  * myArray2 = [NSArray arrayWithObjects:f,b,z,c, NULL];
    
    
    
    //Get the size (count) of the Array
    NSLog(@"Number of Elements in the Array is: %d", [myArray2 count]);
    
    int fromNumber = 0;
    int toNumber = [myArray2 count] - 1;
    int randomNumber = (arc4random()%(toNumber-fromNumber))+fromNumber;
    
    //Printing Random Elements in the Array
    NSLog(@"The element at index %d in the array is: %@", randomNumber, [myArray2 objectAtIndex:randomNumber]);
    
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
    localNotification.alertBody = [myArray2 objectAtIndex:randomNumber];
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    localNotification.applicationIconBadgeNumber = 10;
    localNotification.repeatInterval = NSSecondCalendarUnit;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];

    
    UIAlertView *notificationAlert = [[UIAlertView alloc] initWithTitle:@"SALAWAT"    message:[myArray2 objectAtIndex:randomNumber] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    
    [notificationAlert show];
    
    [notificationAlert dismissWithClickedButtonIndex:0 animated:TRUE];
    
    alertTimer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(showAlert) userInfo:nil repeats:YES]; [super viewDidLoad];

    
}
@end
