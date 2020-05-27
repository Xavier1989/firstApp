//
//  ViewController.m
//  firstApp
//
//  Created by 谢添 on 2020/5/14.
//  Copyright © 2020 xavier. All rights reserved.
//

#import "GTNewsViewController.h"

@interface GTNewsViewController ()<UITableViewDataSource, UITableViewDelegate, GTNormalTableViewCellDelegate>
@property(nonatomic, strong, readwrite)UITableView *tableView;
@property(nonatomic, strong, readwrite)NSMutableArray *dataArray;
@end

@implementation GTNewsViewController

-(instancetype)init{
    self = [super init];
    if(self){
        self.dataArray = @[].mutableCopy;
        for (int i=0; i<20; i++) {
            [self.dataArray addObject:@(i)];
        }
    }
    return self;
}

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];

    // Do any additional setup after loading the view.
//    UIView *view = [[UIView alloc] init];
//    view.backgroundColor = [UIColor redColor];
//    view.frame = CGRectMake(100,100,100,100);
//    [self.view addSubview:view];
//
//    TestView *view2 = [[TestView alloc] init];
//    view2.backgroundColor = [UIColor greenColor];
//    view2.frame = CGRectMake(150,150,100,100);
//    [self.view addSubview:view2];
//
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
//    [view2 addGestureRecognizer:tapGesture];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView.dataSource = self;
    self.tableView.delegate  = self;
    [self.view addSubview:self.tableView];
    
}

//- (void)pushController{
//    UIViewController *viewController = [[UIViewController alloc] init];
//    viewController.view.backgroundColor = [UIColor whiteColor];
//    viewController.navigationItem.title = @"内容";
//
//    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右侧标题" style:UIBarButtonItemStylePlain target:self action:nil];
//    [self.navigationController pushViewController:viewController animated:YES];
//}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    GTDetailViewController *controller = [[GTDetailViewController alloc] init];
    controller.title = [NSString stringWithFormat:@"%@", @(indexPath.row)];
    controller.view.backgroundColor = [UIColor  whiteColor];
    [self.navigationController pushViewController:controller animated:YES];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GTNormalTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if(!cell){
        cell = [[GTNormalTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
        cell.delegate = self;
    }
    [cell layoutTableViewCell];
    return cell;
}

- (void)tableViewCell:(UITableViewCell *)tableViewCell clickDeleteButton:(UIButton *)deleteButton{
    GTDeleteCellView *deleteView = [[GTDeleteCellView alloc]initWithFrame:self.view.bounds];
    
    CGRect rect = [tableViewCell convertRect:deleteButton.frame toView:nil];
    [deleteView showDeleteViewFromPoint:(rect.origin) clickBlock:^{
        NSLog(@"");
    }];
    __weak typeof (self) wself=self;
    [deleteView showDeleteViewFromPoint:rect.origin clickBlock:^{
        __strong typeof(self)strongSelf = wself;
        [strongSelf.dataArray removeLastObject];
        [self.tableView deleteRowsAtIndexPaths:@[[strongSelf.tableView indexPathForCell:tableViewCell]] withRowAnimation:UITableViewRowAnimationAutomatic];
    }];
}
@end
