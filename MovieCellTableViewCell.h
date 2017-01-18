//
//  MovieCellTableViewCell.h
//  MovieApp
//
//  Created by Mohini Sindhu  on 18/01/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import <UIKit/UIKit.h>
@interface MovieCellTableViewCell:UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *yearLabel;
@property (nonatomic, weak) IBOutlet UIImageView *posterImageView;

@end
