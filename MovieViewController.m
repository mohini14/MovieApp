//
//  MovieViewController.m
//  MovieApp
//
//  Created by Mohini Sindhu  on 18/01/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import "MovieViewController.h"
#import "Movie.h"
#import "MovieCellTableViewCell.h"
#import "MovieDetails.h"

@interface MovieViewController ()

@end

@implementation MovieViewController{
	NSArray *moviesD;
}

@synthesize tableView; // Add this line of code

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	self.movies = [NSMutableArray arrayWithCapacity:5];
	
	Movie *movie = [[Movie alloc] init];
	movie.title = @"The Shawshank Redemptions";
	movie.year = @"1994";
	movie.poster = @"ShawshankRedemption_poster.jpg";
	[self.movies addObject:movie];
	
	movie = [[Movie alloc] init];
	movie.title = @"The Godfather";
	movie.year = @"1972";
	movie.poster = @"TheGodfather_poster.jpg";
	[self.movies addObject:movie];
	
	movie = [[Movie alloc] init];
	movie.title = @"The Godfather Part 2";
	movie.year = @"1974";
	movie.poster = @"TheGodfatherPart2_poster.jpg";
	[self.movies addObject:movie];
	
	movie = [[Movie alloc] init];
	movie.title = @"Pulp Fiction";
	movie.year = @"1994";
	movie.poster = @"Pulpfiction_poster.jpg";
	[self.movies addObject:movie];
	
	movie = [[Movie alloc] init];
	movie.title = @"The Good,The Bad and The Ugly";
	movie.year = @"1966";
	movie.poster = @"TheGoodTheBadAndTheUgly_poster.jpg";
	[self.movies addObject:movie];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.movies count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"MovieCellTableViewCell";
	MovieCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
	
	Movie *movie = (self.movies)[indexPath.row];
	cell.titleLabel.text = movie.title;
	cell.yearLabel.text = movie.year;
	[cell.posterImageView setImage:[UIImage imageNamed:movie.poster]];
	
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
	}
	double numSections = [self numberOfSectionsInTableView:tableView];
	double numRows = [self tableView:tableView numberOfRowsInSection:indexPath.section];
	[cell setBackgroundColor:[UIColor colorWithRed:0.8/numRows*((double)indexPath.row)+0.2 green:0.8/numSections*((double)indexPath.section)+0.2 blue:((double)(random()%1000))/1000.0 alpha:1]];
	return cell;
	
	
	return cell;
}




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:@"ShowMovieDetails"]) {
		NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
		MovieDetails *destViewController = segue.destinationViewController;
		destViewController.movie = [_movies objectAtIndex:indexPath.row];
	}
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
