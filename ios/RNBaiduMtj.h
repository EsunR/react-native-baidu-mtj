#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif
#import <BaiduMobStat.h>

@interface RNBaiduMtj : NSObject <RCTBridgeModule>

@end