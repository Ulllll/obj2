//
//  firstViewController.m
//  uiContainer
//
//  Created by Анастасия Рябова on 16/06/2019.
//  Copyright © 2019 Анастасия Рябова. All rights reserved.
//

#import "firstViewController.h"
#import "customCell.h"



@interface firstViewController () <UITableViewDelegate, UITableViewDataSource, NSLayoutManagerDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation firstViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor colorWithRed:135.0/255.0 green:206.0/255.0 blue:250.0/255.0 alpha:1];
    [self.view addSubview:self.tableView];
    
}

- (UITableView *)tableView
{
    if (_tableView)
    {
        return _tableView;
    }
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    
    return _tableView;
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    customCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell)
    {
        cell = [[customCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    cell.backgroundColor = [UIColor colorWithRed:135.0/255.0 green:206.0/255.0 blue:250.0/255.0 alpha:1];
    cell.textLabel.text  = [NSString stringWithFormat:@"first"];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"second"];
    cell.imageView.image = [UIImage imageNamed:@"img"];
    return cell;
}



@end
