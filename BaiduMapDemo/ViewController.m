//
//  ViewController.m
//  BaiduMapDemo
//
//  Created by JGPeng on 16/10/24.
//  Copyright © 2016年 彭金光. All rights reserved.
//

#import "ViewController.h"
#import "JGBaiduMapTool.h"


@interface ViewController ()<BMKMapViewDelegate,BMKLocationServiceDelegate>

@property (nonatomic,strong)BMKMapView * mapView;

@property (nonatomic,strong)BMKLocationService * location;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //创建地图
    self.mapView = [JGBaiduMapTool mapViewWithFrame:self.view.bounds];
    self.view = self.mapView;
    
//    [_mapView setMapType:BMKMapTypeSatellite];
    
    //开启定位服务
    _location = [[BMKLocationService alloc]init];
    _location.delegate = self;
    //启动LocationService
    [_location startUserLocationService];
    
}

#pragma mark - 百度地图内存处理
- (void)viewWillAppear:(BOOL)animated{
    [_mapView viewWillAppear];
    _mapView.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated{
    [_mapView viewWillDisappear];
    _mapView.delegate = nil; // 不用时，置nil
}


#pragma mark - 百度地图定位服务的代理方法
//处理方向变更信息
- (void)didUpdateUserHeading:(BMKUserLocation *)userLocation
{
    NSLog(@"heading is %@",userLocation.heading);
}
//处理位置坐标更新
- (void)didUpdateBMKUserLocation:(BMKUserLocation *)userLocation
{
    NSLog(@"didUpdateUserLocation lat %f,long %f",userLocation.location.coordinate.latitude,userLocation.location.coordinate.longitude);
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
