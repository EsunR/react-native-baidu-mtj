type Attributes = {[key: string]: any};
type PublicAttr = {
  from?: string;
};

declare var BaiduMobStat: {
  start: () => void;
  setDebugOn: (flag: boolean) => void;
  setUserId: (userId: string) => void;
  /**
   * @description 设置channelid
   * https://mtj.baidu.com/static/userguide/book/android/adconfig/channel/channel.html
   * @param appChannel 渠道值，数值自定义，不同渠道自己能区分即可，例如"baidu market"
   * @param saveChannelWithCode 设置为true，保存设置（IOS 端无效）
   */
  setAppChannel: (appChannel: string, saveChannelWithCode: boolean) => void;

  /**
   * @description 自定义用户属性
   * @param property 开发者设置的自定义参数
   */
  setUserProperty: (property: Attributes) => void;
  setGlobalExtraInfo: (attr: Attributes) => void;
  onEvent: (eventId: string, tag: string) => void;
  onEventDuration: (
    eventId: string,
    eventTag: string,
    duration: number,
  ) => void;
  onEventStart: (eventId: string, tag: string) => void;
  onEventEnd: (eventId: string, tag: string) => void;
  onEventWithAttributes: (
    eventId: string,
    tag: string,
    attr: Attributes & PublicAttr,
  ) => void;
  onEventDurationWithAttributes: (
    eventId: string,
    tag: string,
    duration: number,
    attr: Attributes,
  ) => void;
  onEventEndWithAttributes: (
    eventId: string,
    tag: string,
    attr: Attributes,
  ) => void;
  onPageStart: (pageName: string) => void;
  onPageEnd: (pageName: string) => void;
};

export default BaiduMobStat;
