//
//  ViewController.m
//  uiContainer
//
//  Created by Анастасия Рябова on 16/06/2019.
//  Copyright © 2019 Анастасия Рябова. All rights reserved.
//

#import "ViewController.h"
#import "customCell.h"



@interface ViewController ()

@property (nonatomic, strong) UIViewController *c;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}
- (void) displayContentController: (UIViewController*) content;
{
    [self addChildViewController:content];                 // 1
    content.view.frame = CGRectMake(0.f, 500.f, 200.f, 200.f); // 2
    content.view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.c.view];
    [content didMoveToParentViewController:self];          // 3
}




@end
