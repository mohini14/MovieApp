//
//  MovieDetails.h
//  MovieApp
//
//  Created by Mohini Sindhu  on 18/01/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface MovieDetails : UIViewController


@property (nonatomic, strong) IBOutlet UILabel *MovieLabel;
@property (nonatomic, strong) NSString *MovieName;
@property Movie * movie;

@end
