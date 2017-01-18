//
//  MovieDetails.m
//  MovieApp
//
//  Created by Mohini Sindhu  on 18/01/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import "MovieDetails.h"

@interface MovieDetails ()

@end

@implementation MovieDetails


@synthesize MovieLabel;
@synthesize MovieName;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	MovieLabel.text = _movie.title;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
