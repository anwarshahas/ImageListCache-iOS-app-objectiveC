//
//  ImageTableViewCell.h
//  ImageList
//
//  Created by Shahas on 10/05/16.
//  Copyright © 2016 Shahas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface ImageTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;

- (void)setCellImage:(NSString *)imageUrl;

@end
