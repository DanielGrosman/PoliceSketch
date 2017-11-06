//
//  CustomPoliceSketch.h
//  PoliceSketch
//
//  Created by Daniel Grosman on 2017-11-06.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomPoliceSketch : UIImageView

@property (nonatomic, strong) NSArray *eyes;
@property (nonatomic, strong) NSArray *nose;
@property (nonatomic, strong) NSArray *mouth;
@property (nonatomic, assign) NSInteger eyesCurrentIndex;
@property (nonatomic, assign) NSInteger noseCurrentIndex;
@property (nonatomic, assign) NSInteger mouthCurrentIndex;

- (UIImage *) moveForwardsEyes;
- (UIImage *) moveBackwardsEyes;
- (UIImage *) moveForwardsNose;
- (UIImage *) moveBackwardsNose;
- (UIImage *) moveForwardsMouth;
- (UIImage *) moveBackwardsMouth;
@end
