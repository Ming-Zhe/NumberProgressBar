//
//  PBViewController.m
//  ProgressBars
//
//  Created by Ming-Zhe on 14-5-3.
//  Copyright (c) 2014年 Ming-Zhe. All rights reserved.
//

#import "PBViewController.h"
#import "PBView.h"

static const CGSize progressViewSize = { 300.0f, 10.0f };

@interface PBViewController ()

@property (nonatomic) CGFloat progress;
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) NSArray *progressViews;

@end


@implementation PBViewController

- (void)viewDidLoad
{
    UIView *div = [[UIView alloc] initWithFrame:CGRectMake(0, 100,CGRectGetWidth(self.view.bounds), CGRectGetMidY(self.view.bounds))];
    div.backgroundColor = [UIColor whiteColor];
    
    PBView *progressView = [[PBView alloc] initWithFrame:CGRectMake(CGRectGetMidX(div.frame) - progressViewSize.width / 2.0f, CGRectGetMidY(div.frame) - progressViewSize.height / 2.0f, progressViewSize.width, progressViewSize.height)]; //set size
    
    progressView.progressColor = [UIColor redColor]; // set color
    [div addSubview:progressView];
    [self.view addSubview:div];
    
    self.progressViews = @[ progressView ];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateProgress) userInfo:nil repeats:YES];
}

// progress interface for your own logic
- (void)updateProgress
{
    self.progress += 0.020f;
    if (self.progress > 1.0f) {
        self.progress = 0;
    }
    [self.progressViews enumerateObjectsUsingBlock:^(PBView *progressView, NSUInteger idx, BOOL *stop) {
        [progressView setProgress:self.progress animated:YES];
    }];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
