//
//  customCell.m
//  uiContainer
//
//  Created by Анастасия Рябова on 16/06/2019.
//  Copyright © 2019 Анастасия Рябова. All rights reserved.
//

#import "customCell.h"

@interface customCell ()

@property (nonatomic, strong) UIImageView *coverImageView;
@property (nonatomic, strong) UILabel *titleLabelText;
@property (nonatomic, strong) UILabel *subtitleLabel;

@end

@implementation customCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
