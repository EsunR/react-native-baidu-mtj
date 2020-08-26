type Attributes = {[key: string]: any};
type PublicAttr = {
  from?: string;
};

interface IBaiduMobStat {
  start: () => void;
  setDebugOn: (flag: boolean) => void;
  setUserId: (userId: string) => void;
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
}

declare module 'react-native-baidu-mtj' {
  var RNBaiduMtj: IBaiduMobStat;
  export default RNBaiduMtj;
}
