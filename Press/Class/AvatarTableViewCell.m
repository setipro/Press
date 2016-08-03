//
//  AvatarTableViewCell.m
//  Press
//
//  Created by bin on 16/8/3.
//  Copyright © 2016年 bin. All rights reserved.
//

#import "AvatarTableViewCell.h"
#import <Masonry/Masonry.h>

@interface AvatarTableViewCell()
@property (nonatomic, strong) UIImageView *avatarImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@end

@implementation AvatarTableViewCell

#pragma mark - life cycle
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.avatarImageView = [[UIImageView alloc] init];
        self.avatarImageView.backgroundColor = [UIColor grayColor];
        [self.contentView addSubview:self.avatarImageView];
        [self.avatarImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self.contentView);
            make.width.and.height.equalTo(@100);
        }];
        self.nameLabel = [[UILabel alloc] init];
        self.nameLabel.text = @"用户名称";
        self.nameLabel.tintColor = [UIColor blackColor];
        self.nameLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:self.nameLabel];
        [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.avatarImageView);
            make.top.equalTo(self.avatarImageView.mas_bottom).with.offset(20);
            make.width.equalTo(self.avatarImageView);
            make.height.equalTo(@44);
        }];
    }
    return self;
}


@end
