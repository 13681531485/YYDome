//
//  YYHeader.h
//  YYDome
//
//  Created by Game Mac on 15/10/27.
//  Copyright © 2015年 yangyang. All rights reserved.
//

#ifndef YYHeader_h
#define YYHeader_h
#import "YYViewController.h"
//首页网址
#define KHome @"http://42.121.13.106:8086/HealthTreatment/api/more/tblrecommend!getHomePage.do?phonetype=2&page=%ld&pageRecord=6&is_traditional=0&user_id="

//成人穴位
#define KAdult @"http://42.121.13.106:8086/HealthTreatment/api/point/tblAdultPoint!getAdultPointList2.do?is_traditional=0"

//成人穴位分类

#define KAdultClassify @"http://42.121.13.106:8086/HealthTreatment/api/point/tblAdultPoint!getAdultPoint.do?phonetype=2&is_traditional=0&id=%@"

//儿童穴位
#define KChild @"http://42.121.13.106:8086/HealthTreatment/api/point/tblChildrenPoint!getChildrenPointList2.do?is_traditional=0"

//儿童穴位分类
#define KChildClassify @"http://42.121.13.106:8086/HealthTreatment/api/point/tblChildrenPoint!getChildrenPoint.do?phonetype=2&is_traditional=0&id=1";
//成人疾病
#define KAdultDisease @"http://42.121.13.106:8086/HealthTreatment/api/disease/tblAdultDisease!getAdultDiseaseList2.do?is_traditional"

//儿童疾病

#define KChildDisease @"http://42.121.13.106:8086/HealthTreatment/api/disease/tblChildrenDisease!getChildrenDiseaseList2.do?is_traditional=0&phonetype=2"
//成人保健
#define KAdultHealthProtection @"http://42.121.13.106:8086/HealthTreatment/api/care/tblkeepLife!getkeepFitLifeList2.do?is_traditional=0&type=0&phonetype=2"

//儿童保健

#define KChildHealthProtection @"http://42.121.13.106:8086/HealthTreatment/api/care/tblkeepLife!getkeepFitLifeList2.do?is_traditional=0&type=1&phonetype=2"
//手法入门
#define KSkillAccidence @"http://42.121.13.106:8086/HealthTreatment/api/more/tblskill!get.do?is_traditional=0"



#endif /* YYHeader_h */
