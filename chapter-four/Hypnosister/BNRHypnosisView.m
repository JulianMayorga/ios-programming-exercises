//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Julian Mayorga on 4/22/15.
//  Copyright (c) 2015 Julian Mayorga. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All BNRHypnosisViews start with a clear background color
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    UIImage *logoImage = [UIImage imageNamed:@"logo.png"];

    [logoImage drawInRect:bounds];

    // Figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;

    // The circle wil circumbscribe the view
    float maxRadius = hypotf(bounds.size.width, bounds.size.height) / 2.0;

    UIBezierPath *path = [[UIBezierPath alloc] init];

    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }

    // Configure line width to 10 points
    path.lineWidth = 10;

    // Configure the drawing color to light gray
    [[UIColor lightGrayColor] setStroke];

    // Draw the line!
    [path stroke];
}

@end
