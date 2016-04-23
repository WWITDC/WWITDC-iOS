//
//  ContentCustomTableViewCell.h
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentCustomTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *contentText;
@property (strong, nonatomic) IBOutlet UIImageView *contentEnterImage;

@end