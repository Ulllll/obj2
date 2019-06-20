//
//  secondViewController.m
//  uiContainer
//
//  Created by Анастасия Рябова on 16/06/2019.
//  Copyright © 2019 Анастасия Рябова. All rights reserved.
//

#import "secondViewController.h"
#import "secondTableView.h"

@interface secondViewController () 

@property (nonatomic, strong) secondTableView *secondTable;//раскоментированно свойство

@end

@implementation secondViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:182.0/255.0 blue:193.0/255.0 alpha:1];
    self.secondTable = [[secondTableView alloc]init];// инициализация через self, смена на наследование от secondTableView
    [self displayContentController:self.secondTable]; //вызов функции для secondTable

    
}
- (void) displayContentController: (secondTableView*) content;
{
    [self addChildViewController:content];
    content.view.frame = CGRectMake(0.f, 100.f, 300.f, 300.f);
    [self.view addSubview:self.secondTable.view];
    [content didMoveToParentViewController:self];
}








@end

