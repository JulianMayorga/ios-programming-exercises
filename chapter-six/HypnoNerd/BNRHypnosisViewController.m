//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Julian Mayorga on 4/24/15.
//  Copyright (c) 2015 Julian Mayorga. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController


- (void)segmentAction:(UISegmentedControl *)segment {
    BNRHypnosisView *view = self.view;
    switch (segment.selectedSegmentIndex) {
        case 0:
            view.circleColor = [UIColor redColor];
            break;
        case 1:
            view.circleColor = [UIColor greenColor];
            break;
        case 2:
            view.circleColor = [UIColor blueColor];
            break;

        default:
            break;
    }
}

- (void)loadView {
    // Create a view
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];

    // Set it as *the* view of this view controller
    self.view = backgroundView;
}

- (void)viewDidLoad {
    // Always call the super implementation of viewDidLoad
    [super viewDidLoad];


    NSArray *colors = @[@"Red", @"Green", @"Blue"];
    UISegmentedControl *colorControl = [[UISegmentedControl alloc] initWithItems:colors];
    colorControl.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 50);
    [colorControl addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:colorControl];

    NSLog(@"BNRHypnosisViewController loaded its view.  ");
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    if (self) {
        // Set the tab bar item's title
        self.tabBarItem.title = @"Hypnotize";

        // Create a UIImage from a file
        // This will use Hypno@2x.png on retina display devices
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];

        // Put that image on the tab bar item
        self.tabBarItem.image = i;
    }

    return self;
}

@end
