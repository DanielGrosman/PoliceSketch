//
//  ViewController.m
//  PoliceSketch
//
//  Created by Sam Meech-Ward on 2017-10-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "LHLViewController.h"
#import "CustomPoliceSketch.h"

@interface LHLViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *eyesImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;
@property (weak, nonatomic) IBOutlet UIButton *eyesBackwards;
@property (weak, nonatomic) IBOutlet UIButton *eyesForwards;
@property (weak, nonatomic) IBOutlet UIButton *noseBackwards;
@property (weak, nonatomic) IBOutlet UIButton *noseForwards;
@property (weak, nonatomic) IBOutlet UIButton *mouthBackwards;
@property (weak, nonatomic) IBOutlet UIButton *mouthForwards;
@property (nonatomic, strong) CustomPoliceSketch *customPoliceSketch;
@end

@implementation LHLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.customPoliceSketch = [[CustomPoliceSketch alloc] init];
}

- (IBAction) eyesForwards: (id) sender {
    self.eyesImageView.image = [self.customPoliceSketch moveForwardsEyes];
}
- (IBAction) eyesBackwords: (id) sender {
    self.eyesImageView.image = [self.customPoliceSketch moveBackwardsEyes];
}
- (IBAction) noseForwards: (id) sender {
    self.noseImageView.image = [self.customPoliceSketch moveForwardsNose];
}
- (IBAction) noseBackwards: (id) sender {
    self.noseImageView.image = [self.customPoliceSketch moveBackwardsNose];
}
- (IBAction) mouthForwards: (id) sender {
    self.mouthImageView.image = [self.customPoliceSketch moveForwardsMouth];
}
- (IBAction) mouthBackwards: (id) sender {
    self.mouthImageView.image = [self.customPoliceSketch moveBackwardsMouth];
}


@end
