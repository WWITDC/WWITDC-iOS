//
//  MenuViewController.h
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import "ITDCViewController.h"

@interface MenuViewController : ITDCViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *contentList;
@property (strong, nonatomic) IBOutlet UITableView *contentTableView;

@end
