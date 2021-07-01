#import "RNBaiduMtj.h"

@implementation RNBaiduMtj

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(start) {
    //  do nothing (兼容安卓的 start 方法)
}

RCT_EXPORT_METHOD(setAppChannel:(NSString *)channelId) {
    [[BaiduMobStat defaultStat] setChannelId:channelId];
}

RCT_EXPORT_METHOD(setDebugOn:(BOOL *)isDebug) {
    [[BaiduMobStat defaultStat] setEnableDebugOn:isDebug];
}

RCT_EXPORT_METHOD(setUserProperty:(NSDictionary *)property) {
  [[BaiduMobStat defaultStat] setUserProperty:property];
}

RCT_EXPORT_METHOD(setUserId:(NSString *)userId) {
    [[BaiduMobStat defaultStat] setUserId:userId];
}

RCT_EXPORT_METHOD(setGlobalExtraInfo:(NSDictionary *)extraDictionary) {
    BaiduMobStatExtraInfo *extraInfo = [[BaiduMobStatExtraInfo alloc] init];
    for (NSString *key in extraDictionary) {
        NSString *value = [extraDictionary objectForKey:key];
        if (![key length] || ![value length]) {
            continue;
        }
        if ([key isEqualToString:@"V1"]) {
            extraInfo.v1 = value;
        } else if ([key isEqualToString:@"V2"]) {
            extraInfo.v2 = value;
        } else if ([key isEqualToString:@"V3"]) {
            extraInfo.v3 = value;
        } else if ([key isEqualToString:@"V4"]) {
            extraInfo.v4 = value;
        } else if ([key isEqualToString:@"V5"]) {
            extraInfo.v5 = value;
        } else if ([key isEqualToString:@"V6"]) {
            extraInfo.v6 = value;
        } else if ([key isEqualToString:@"V7"]) {
            extraInfo.v7 = value;
        } else if ([key isEqualToString:@"V8"]) {
            extraInfo.v8 = value;
        } else if ([key isEqualToString:@"V9"]) {
            extraInfo.v9 = value;
        } else if ([key isEqualToString:@"V10"]) {
            extraInfo.v10 = value;
        }
    }
    [[BaiduMobStat defaultStat] setGlobalExtraInfo:extraInfo];
}

RCT_EXPORT_METHOD(onEvent:(NSString *)eventId eventLabel:(NSString *)eventLabel) {
    [[BaiduMobStat defaultStat] logEvent:eventId eventLabel: eventLabel];
}

RCT_EXPORT_METHOD(onEventDuration:(NSString *)eventId eventLabel:(NSString *)eventLabel durationTime:(nonnull NSNumber *)duration) {
    [[BaiduMobStat defaultStat] logEventWithDurationTime:eventId eventLabel: eventLabel durationTime:[duration unsignedLongValue]];
}


RCT_EXPORT_METHOD(onEventStart:(NSString *)eventId eventLabel:(NSString *)eventLabel) {
    [[BaiduMobStat defaultStat] eventStart:eventId eventLabel: eventLabel];
}


RCT_EXPORT_METHOD(onEventEnd:(NSString *)eventId eventLabel:(NSString *)eventLabel) {
    [[BaiduMobStat defaultStat] eventEnd:eventId eventLabel: eventLabel];
}


RCT_EXPORT_METHOD(onEventWithAttributes:(NSString *)eventId eventLabel:(NSString *)eventLabel attributes:(NSDictionary *)attributes) {
    [[BaiduMobStat defaultStat] logEvent:eventId eventLabel: eventLabel attributes:attributes];
}


RCT_EXPORT_METHOD(onEventDurationWithAttributes:(NSString *)eventId eventLabel:(NSString *)eventLabel durationTime:(nonnull NSNumber *)duration attributes:(NSDictionary *)attributes) {
    [[BaiduMobStat defaultStat] logEventWithDurationTime:eventId eventLabel: eventLabel durationTime:[duration unsignedLongValue] attributes:attributes];
}


RCT_EXPORT_METHOD(onEventEndWithAttributes:(NSString *)eventId eventLabel:(NSString *)eventLabel attributes:(NSDictionary *)attributes) {
    [[BaiduMobStat defaultStat] logEvent:eventId eventLabel: eventLabel attributes:attributes];
}


RCT_EXPORT_METHOD(onPageStart:(NSString *)name) {
    [[BaiduMobStat defaultStat] pageviewStartWithName:name];
}


RCT_EXPORT_METHOD(onPageEnd:(NSString *)name) {
    [[BaiduMobStat defaultStat] pageviewEndWithName:name];
}

@end
