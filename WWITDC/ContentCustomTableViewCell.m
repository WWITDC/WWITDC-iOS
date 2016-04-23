//
//  ContentCustomTableViewCell.m
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import "ContentCustomTableViewCell.h"

@implementation ContentCustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    return self;
}

- (void)awakeFromNib {
    // Initialization code
    //cell样式
    self.selectionStyle = UITableViewCellSelectionStyleDefault;
    self.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Dark_News_Comment_Text_bg_Highlight"]];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
