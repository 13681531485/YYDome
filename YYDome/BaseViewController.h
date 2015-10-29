//
//  BaseViewController.h
//  YYDome
//
//  Created by Game Mac on 15/10/26.
//  Copyright © 2015年 yangyang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMProgressHUD.h"
#import "MJRefreshFooterView.h"
#import "MJRefreshHeaderView.h"
@interface BaseViewController : UIViewController<UIAlertViewDelegate>
{
    float              startX;//7系统与7以下坐标调节
    float               marginTop;//距离上边的高度
    MMProgressHUD* hud;//提示框
    UIPinchGestureRecognizer *pinchGesture;
    UILabel* baseTitleLabel;
}
@property (nonatomic,assign) BOOL canDragBack;
@property (nonatomic ,strong) MJRefreshFooterView *m_footer;
@property (nonatomic,strong)  MJRefreshHeaderView *m_header;

-(void)DetectNetwork;//监测网络是否连接（主要标注没有连接）
-(void)DetectNetwork2;//升级版检测网络是否连接（主要就是让hud与没有网络的框不同时显示）
-(BOOL)isEnableNetwork;
- (void)setTopViewWithTitle:(NSString*)titleStr withBackButton:(BOOL)hasBacButton;  //顶部导航条
- (void)showAlertViewWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSString *)bTitle;
- (void)showMessageWithContent:(NSString*)content point:(CGPoint)point;
- (void)showMessageWithContent:(NSString*)content;
- (void)showMessageWindowWithContent:(NSString*)content imageType:(NSInteger)imageType;
-(void)setTitleText:(NSString *)title;
//防止多个按钮同时出发
-(void)setExclusiveTouchForButtons:(UIView *)myView;
//侧滑关闭页面手势
-(void)backTolastPage:(id)sender;
//返回按钮关闭页面
- (void)backButtonClick:(id)sender;
-(void)ceshi;
-(void)viewDidFinish;
-(void)setBaseTitleLabelFrame:(CGRect)frame;
-(UIButton*)rightButton:(UIImage*)normalImage HightlightedImage:(UIImage*)highlightedImage action:(SEL)action;
-(UIButton*)rightButton:(UIImage*)normalImage HightlightedImage:(UIImage*)highlightedImage frame:(CGRect)frame action:(SEL)action;
-(void)showErrorMsg:(id)error;
-(void)showErrorMsg:(id)error notNetWorkMsg:(NSString*)notNetWorkMsg;
-(void)showErrorMsgWithToast:(id)error;
-(void)showrewardView;
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
-(void)mustUpload;
-(void)showSelectCharacterView;
-(void)hideSelectCharacterView;
-(void)showSelectCharacterViewForFullScreen;
-(void)setBaseTopBgColor:(UIColor*)color;
- (void)setExtraCellLineHidden:(UITableView *)tableView;//隐藏多余cell
-(void)cellLIne:(UITableViewCell *)cell withtabbleview:(UITableView *)tableview;//分割线长度
-(NSMutableArray*)characters;
-(NSMutableDictionary*)firstCharacterInfo;
/**
 *   设置头部颜色
 *
 *   @param index
 */
-(UIColor*)setTopViewRandomColor:(NSString*)gameId;
-(UIColor*)setTopViewRandomColor:(NSString*)gameId alpha:(CGFloat)alpha;
-(UIColor*)getColor;
-(UIColor*)getColor:(CGFloat)alpha;
/**
 *   视频播放
 *
 *   @param
 */
- (void)movie:(NSString *)urlStr;


/**
 *   设置不允许横屏
 */
- (void)setOrientationLandscape;
/**
 *   设置竖屏
 */
-(void)setOrientationPortrait;

/**
 *   跳转用户详情页面
 *
 *   @param userId 用户id
 */
-(void)actionToUerInfo:(NSString*)userId;
/**
 *   跳转用户页面
 *
 *   @param userId    用户id
 *   @param className 类名（用于访客记录）
 */
-(void)actionToUerInfo:(NSString*)userId className:(NSString*)className;

-(void)actionToChannelInfo:(NSMutableDictionary*)channelDict;

//上拉刷新
-(void)addheadView:(UIScrollView *)tableView;
- (void)addFootView:(UIScrollView *)tableView;
- (void)headerRefreshing;
- (void)footerRefreshing;
- (void)endHeaderFreshing;
- (void)endFooterFreshing;
- (void)remov;
//重新加载
- (void)baseViewAddFriendlyLoadingView:(CGRect)frame;
- (void)baseViewReloadData;
- (void)showfriendlyLoadingText;
- (void)hidefriendlyLoadingText;
- (void)errorfriendlyLoadingText;
-(void)showPromptViewWithTextBtnEnable:(NSString*)str;

-(void)showShareAlertView:(NSMutableArray*)menus;
/**
 *   弹出分享对话框
 */
-(void)showShareAlertView;

@end
