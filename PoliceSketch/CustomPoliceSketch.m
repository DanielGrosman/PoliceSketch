//
//  CustomPoliceSketch.m
//  PoliceSketch
//
//  Created by Daniel Grosman on 2017-11-06.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "CustomPoliceSketch.h"

@implementation CustomPoliceSketch

- (instancetype)init
{
    self = [super init];
    if (self) {
        _eyes = [NSArray arrayWithObjects:
                 [UIImage imageNamed:@"eyes_1"],
                 [UIImage imageNamed:@"eyes_2"],
                 [UIImage imageNamed:@"eyes_3"],
                 [UIImage imageNamed:@"eyes_4"],
                 [UIImage imageNamed:@"eyes_5"], nil];
        _eyesCurrentIndex = 0;
        _nose = [NSArray arrayWithObjects:
                 [UIImage imageNamed:@"nose_1"],
                 [UIImage imageNamed:@"nose_2"],
                 [UIImage imageNamed:@"nose_3"],
                 [UIImage imageNamed:@"nose_4"],
                 [UIImage imageNamed:@"nose_5"], nil];
        _noseCurrentIndex = 0;
        _mouth = [NSArray arrayWithObjects:
                 [UIImage imageNamed:@"mouth_1"],
                 [UIImage imageNamed:@"mouth_2"],
                 [UIImage imageNamed:@"mouth_3"],
                 [UIImage imageNamed:@"mouth_4"],
                 [UIImage imageNamed:@"mouth_5"], nil];
        _mouthCurrentIndex = 0;
    }
    return self;
}


- (UIImage *)moveForwardsEyes {
    self.eyesCurrentIndex++;
    if ((self.eyesCurrentIndex % [self.eyes count]) == 0) {
        self.eyesCurrentIndex = 0;
    }
    return self.eyes[self.eyesCurrentIndex];
}

-(UIImage *)moveBackwardsEyes {
    
    if (self.eyesCurrentIndex == 0) {
    self.eyesCurrentIndex = 4;
    } else {
                self.eyesCurrentIndex --;
        }
        return self.eyes[self.eyesCurrentIndex];
}

- (UIImage *)moveForwardsNose {
    self.noseCurrentIndex++;
    if ((self.noseCurrentIndex % [self.nose count]) == 0) {
        self.noseCurrentIndex = 0;
    }
    return self.nose[self.noseCurrentIndex];
}

-(UIImage *)moveBackwardsNose {
    if (self.noseCurrentIndex == 0) {
        self.noseCurrentIndex = 4;
    } else {
        self.noseCurrentIndex --;
    }
    return self.nose[self.noseCurrentIndex];
}

- (UIImage *)moveForwardsMouth {
    self.mouthCurrentIndex++;
    if ((self.mouthCurrentIndex % [self.mouth count]) == 0) {
        self.mouthCurrentIndex = 0;
    }
    return self.mouth[self.mouthCurrentIndex];
}

-(UIImage *)moveBackwardsMouth {
    if (self.mouthCurrentIndex == 0) {
        self.mouthCurrentIndex = 4;
    } else {
        self.mouthCurrentIndex --;
    }
    return self.mouth[self.mouthCurrentIndex];
}

@end
