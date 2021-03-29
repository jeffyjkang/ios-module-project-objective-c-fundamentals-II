//
//  JYKTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Jeff Kang on 3/28/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import "JYKTimeTrackerViewController.h"
#import "JYKTimedTaskController.h"
#import "JYKTimedTask.h"

@interface JYKTimeTrackerViewController ()

@property (nonatomic) JYKTimedTaskController *timedTaskController;

// outlets
@property (nonatomic) IBOutlet UITextField *clientTextField;
@property (nonatomic) IBOutlet UITextField *summaryTextField;
@property (nonatomic) IBOutlet UITextField *rateTextField;
@property (nonatomic) IBOutlet UITextField *hoursTextField;
@property (nonatomic) IBOutlet UITableView *tableView;

@end

@implementation JYKTimeTrackerViewController 

- (IBAction)logTime:(id)sender {
    NSString *client = self.clientTextField.text;
    NSString *summary = self.summaryTextField.text;
    double rate = self.rateTextField.text.doubleValue;
    double hours = self.rateTextField.text.doubleValue;
    
    [self.timedTaskController createTimedTaskWith:[[JYKTimedTask alloc] initWithClient:client summary:summary rate:rate hours:hours]];
    self.clientTextField.text = @"";
    self.summaryTextField.text = @"";
    self.rateTextField.text = @"";
    self.hoursTextField.text = @"";
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.timedTaskController = [[JYKTimedTaskController alloc] init];
    self.tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimedTaskCell" forIndexPath:indexPath];
    
    JYKTimedTask *timedTask = [self.timedTaskController timedTaskAtIndex:indexPath.row];
    
    cell.textLabel.text = timedTask.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", timedTask.total];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
