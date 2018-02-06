//
//  HomeMenuView.m
//  JRTTDemo
//
//  Created by 赵 on 2018/1/26.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import "HomeMenuView.h"

@interface HomeMenuView()



@end


@implementation HomeMenuView

-(CollectionViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [CollectionViewModel new];
    }
    return _viewModel;
}



-(void)awakeFromNib
{
    [super awakeFromNib];
    self.flowLayout.minimumInteritemSpacing = 1;
    
    
}

+(instancetype)getViewWithNibSelectedBlock:(didSelectedBlock)SelectedBlock
{
    HomeMenuView * view = [self getViewWithNib];
    [view.viewModel setCollectionView:view.collectionView datayArray:@[@"推荐"].mutableCopy cellIdentifer:@"HomeMenuCollectionViewCell" didSelectedBlock:SelectedBlock];
    return view;
}


-(void)clickIdx:(NSInteger)idx
{
    [self.viewModel clickIdx:idx];
    
}

+(instancetype)getViewWithNib
{
    HomeMenuView * view = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:self options:nil][0];
    
    
    return view;
}

@end