//
//  JGBaiduMapTool.m
//  BaiduMapDemo
//
//  Created by JGPeng on 16/10/24.
//  Copyright © 2016年 彭金光. All rights reserved.
//

#import "JGBaiduMapTool.h"
@interface JGBaiduMapTool ()

@property (nonatomic,strong)BMKMapManager* mapManager;

@end


@implementation JGBaiduMapTool

- (void)test{

}
/**
 *  百度地图单类方法
 */
+ (instancetype)ShareTool{
    
    static JGBaiduMapTool *_tool = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tool = [[JGBaiduMapTool alloc]init];
    });
    return _tool;
}

/**
 *  启动百度地图服务
 *
 *  @return T 成功 F 失败
 */
+ (BOOL)startBaiduMapService{
    JGBaiduMapTool * tool = [JGBaiduMapTool ShareTool];
    tool.mapManager = [[BMKMapManager alloc]init];
        // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
    BOOL ret = [tool.mapManager start:BaiduMapKey  generalDelegate:nil];
    if (!ret) {
        return NO;
    }
    return YES;
}
/**
 *  创建地图view
 *
 *  @param frame
 *
 *  @return BMKMapView
 */
+ (BMKMapView *)mapViewWithFrame:(CGRect)frame{
    BMKMapView* mapView = [[BMKMapView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    return mapView;
}


@end
