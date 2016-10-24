//
//  JGBaiduMapTool.h
//  BaiduMapDemo
//
//  Created by JGPeng on 16/10/24.
//  Copyright © 2016年 彭金光. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BaiduMapAPI_Base/BMKBaseComponent.h>           //引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>             //引入地图功能所有的头文件
#import <BaiduMapAPI_Search/BMKSearchComponent.h>       //引入检索功能所有的头文件
#import <BaiduMapAPI_Cloud/BMKCloudSearchComponent.h>   //引入云检索功能所有的头文件
#import <BaiduMapAPI_Location/BMKLocationComponent.h>   //引入定位功能所有的头文件
#import <BaiduMapAPI_Utils/BMKUtilsComponent.h>         //引入计算工具所有的头文件
#import <BaiduMapAPI_Radar/BMKRadarComponent.h>         //引入周边雷达功能所有的头文件
#import <BaiduMapAPI_Map/BMKMapView.h>                  //只引入所需的单个头文件

//百度地图的key值，掉用百度地图时候，修改key值即可
static  NSString  * const BaiduMapKey = @"Bj3oVaDCjqsTXtnSOBdGhjPY33IMKieK";


@interface JGBaiduMapTool : NSObject

/**
 *  百度地图单类方法
 */
+ (instancetype)ShareTool;
/**
 *  启动百度地图服务
 *
 *  @return T 成功 F 失败
 */
+ (BOOL)startBaiduMapService;
/**
 *  创建地图view
 *
 *  @param frame
 *
 *  @return BMKMapView
 */
+ (BMKMapView *)mapViewWithFrame:(CGRect)frame;




@end
