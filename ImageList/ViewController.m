//
//  ViewController.m
//  ImageList
//
//  Created by Shahas on 10/05/16.
//  Copyright © 2016 Shahas. All rights reserved.
//

#import "ViewController.h"
#import "ImageTableViewCell.h"

@interface ViewController ()

@property NSMutableArray *dictionaryArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createDictionary];
}

- (void)createDictionary {
    self.dictionaryArray = [@[
                             @{
                                 @"image_url":@"http://allcoverpix.com/images/covers/850/itm_2012-11-25_00-15-46_1.jpg"
                             },
                             @{
                                 @"image_url":@"http://eskipaper.com/images/images-4.jpg"
                             },
                             @{
                                 @"image_url":@"https://media.giphy.com/media/10tIjpzIu8fe0/giphy.gif"
                             },
                             @{
                                 @"image_url":@"https://pixabay.com/static/uploads/photo/2016/02/07/19/50/snow-1185474_960_720.jpg"
                             },
                             @{
                                 @"image_url":@"http://www.greetingsfromheart.com/images/nature/nature.gif"
                             },
                             @{
                                 @"image_url":@"http://stuffpoint.com/nature/image/277236-nature-nature-beauty-scenery-bridge.jpg"
                             },
                             @{
                                 @"image_url":@"http://24.media.tumblr.com/tumblr_m8l749PLs81qg39ewo1_500.gif"
                             },
                             @{
                                 @"image_url":@"http://www.hdwallpapera.com/wp-content/uploads/ktz/new%20nature%20beauty-2yjpiuuhapum2tu2xtrk7e.jpg"
                             },
                             @{
                                 @"image_url":@"http://wallpapercave.com/wp/sNxf34y.jpg"
                             }
                             ] mutableCopy];
    [self.imageListTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dictionaryArray.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"ImageTableViewCell";
    ImageTableViewCell *cell = [_imageListTableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    NSDictionary *dictionary = [self.dictionaryArray objectAtIndex:indexPath.row];
    NSString *imagUrl = [dictionary valueForKey:@"image_url"];
    
    [cell setCellImage:imagUrl];
    [cell layoutIfNeeded];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}


@end
