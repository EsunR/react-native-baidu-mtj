
# react-native-baidu-mtj

百度统计移动端 React Native 版本无埋点 SDK，解决了官方 RN 模块版本过低的问题，并加入了 ts 支持

# 使用方法

## 安装

`$ yarn add react-native-baidu-mtj`

低版本 React Native 需要手动建立连接

`$ react-native link react-native-baidu-mtj`

## Android 端部署

配置AndroidManifest.xml：

1）添加权限声明

```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
<uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
<uses-permission android:name="android.permission.READ_PHONE_STATE" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.BLUETOOTH" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.WRITE_SETTINGS" />
<uses-permission android:name="android.permission.GET_TASKS" />
```

2）添加业务配置

```xml
<!-- 您从百度网站获取的APP KEY，根据实际您的APP申请的APP_KEY进行修改 -->
<meta-data
		android:name="BaiduMobAd_STAT_ID"
		android:value="a9e2ad84a2" /> 

<!-- 渠道商编号 -->
<meta-data
		android:name="BaiduMobAd_CHANNEL"
		android:value="Baidu Market" />

<!-- 是否开启错误日志统计，默认为false -->
<meta-data
		android:name="BaiduMobAd_EXCEPTION_LOG"
		android:value="true" />

<!-- 日志仅在wifi网络下发送，默认为false -->
<meta-data
		android:name="BaiduMobAd_ONLY_WIFI"
		android:value="false" />

<!-- 是否获取基站位置信息 ,默认为true -->
<meta-data
		android:name="BaiduMobAd_CELL_LOCATION"
		android:value="true" />

<!-- 是否获取GPS位置信息，默认为true -->
<meta-data
		android:name="BaiduMobAd_GPS_LOCATION"
		android:value="true" />

<!-- 是否获取WIFI位置信息，默认为true -->
<meta-data
		android:name="BaiduMobAd_WIFI_LOCATION"
		android:value="true" />
```

3）App 中调用

```js
import RNBaiduMtj from "react-native-baidu-mtj"
// ... ...
RNBaiduMtj.start()
```

## IOS 端部署

1）手动安装 pod 依赖

```shell
cd yourReactNativeProject/ios/
pod install
```

2）到主Target下，切到Build Settings，找到Linking部分的Other Linker Flags条目，双击后加入-ObjC配置。

![](https://i.loli.net/2021/07/02/xnCb4Bl85hTrXfU.png)

3）编辑info.plist配置文件：打开主工程下Supporting Files文件夹下的info.plist文件，按照如下示例，新增mtj_appkey、mtj_deubglog两行参数，并写入您的appkey

![](https://i.loli.net/2021/07/02/zmBFHO7iqkMnC4g.png)

# API

参考官方文档：

- https://mtj.baidu.com/static/userguide/book/android/bconfig/api.html
- https://mtj.baidu.com/static/userguide/book/ios/bconfig/api.html