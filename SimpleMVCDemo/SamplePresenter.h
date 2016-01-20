//
//  SamplePresenter.h
//  SimpleMVCDemo
//
//  Created by 吴迪玮 on 16/1/20.
//  Copyright © 2016年 DNT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SampleModel.h"

@protocol SamplePresenter <NSObject>

- (void)updateModelName:(NSString *)name;

- (void)displayModelName;

@end

@protocol SampleViewInterface <NSObject>

-(void)setModelNameLabel:(NSString *)name;

@end


@interface SamplePresenter : NSObject<SamplePresenter>

@property (weak, nonatomic) id<SampleViewInterface> viewDelegate;
@property (strong, nonatomic) SampleModel *model;

- (instancetype)init:(SampleModel *)model;

@end
