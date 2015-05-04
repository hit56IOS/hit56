//
//  MainViewController.m
//  hit56
//
//  Created by gongdeyin on 4/26/15.
//  Copyright (c) 2015 anlu. All rights reserved.
//

#import "MainViewController.h"
#import "BaseTableView.h"

@interface MainViewController () <UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)BaseTableView *mainTable;
@property(nonatomic,strong)NSMutableDictionary *data;
@property(nonatomic,strong)NSMutableArray      *carInfo;
@property(nonatomic,strong)NSMutableArray      *goodsInfo;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super didReceiveMemoryWarning];
    self.mainTable = [[BaseTableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.mainTable.delegate = self;
    self.mainTable.dataSource = self;
    [self.view addSubview:self.mainTable];
    HttpHelper *helper = [HttpHelper shareHepler];
    [helper requestWithPath:@"getinfo/北京" completed:^(BOOL finish, id respones) {
        _carInfo = [[respones objectForKey:@"car:src:"] copy];
        _goodsInfo = [[respones objectForKey:@"goods:src:"] copy];
        [_mainTable reloadData];
    } faild:^(BOOL faild) {
        NSLog(@"xsss");
    }];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.carInfo.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = [[self.carInfo objectAtIndex:indexPath.row] objectForKey:@"detail"];
    cell.detailTextLabel.text = [[self.carInfo objectAtIndex:indexPath.row] objectForKey:@"cell"];
    return cell;
}

@end
