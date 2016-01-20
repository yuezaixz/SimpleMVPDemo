//
//  SamplePresenter.m
//  SimpleMVCDemo
//
//  Created by 吴迪玮 on 16/1/20.
//  Copyright © 2016年 DNT. All rights reserved.
//

#import "SamplePresenter.h"

@implementation SamplePresenter

- (instancetype)init:(SampleModel *)model
{
    self = [super init];
    if (self) {
        self.model = model;
    }
    return self;
}

-(void)updateModelName:(NSString *)name{
    self.model.name = name;
    [self displayModelName];
}

-(void)displayModelName{
    [self.viewDelegate setModelNameLabel:[NSString stringWithFormat:@"%@:Model name is %@",[NSDate date],self.model.name]];
}

@end
