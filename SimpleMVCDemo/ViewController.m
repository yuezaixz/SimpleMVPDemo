//
//  ViewController.m
//  SimpleMVCDemo
//
//  Created by 吴迪玮 on 16/1/20.
//  Copyright © 2016年 DNT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sampleLabel;
@property (weak, nonatomic) IBOutlet UITextField *modifyText;

@end

@implementation ViewController

- (void)viewDidLoad {
    SampleModel *model = [[SampleModel alloc] init];
    model.name = @"David";
    
    self.presenter = [[SamplePresenter alloc] init:model];
    ((SamplePresenter *)self.presenter).viewDelegate = self;
    [self.presenter displayModelName];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)setModelNameLabel:(NSString *)name{
    self.sampleLabel.text = name;
}

- (IBAction)modifyNameAction:(id)sender {
    [self.presenter updateModelName:self.modifyText.text];
}


@end
