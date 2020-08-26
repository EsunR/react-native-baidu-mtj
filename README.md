
# react-native-baidu-mtj

## Getting started

`$ npm install react-native-baidu-mtj --save`

### Mostly automatic installation

`$ react-native link react-native-baidu-mtj`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-baidu-mtj` and add `RNBaiduMtj.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNBaiduMtj.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNBaiduMtjPackage;` to the imports at the top of the file
  - Add `new RNBaiduMtjPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-baidu-mtj'
  	project(':react-native-baidu-mtj').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-baidu-mtj/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-baidu-mtj')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNBaiduMtj.sln` in `node_modules/react-native-baidu-mtj/windows/RNBaiduMtj.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Baidu.Mtj.RNBaiduMtj;` to the usings at the top of the file
  - Add `new RNBaiduMtjPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNBaiduMtj from 'react-native-baidu-mtj';

// TODO: What to do with the module?
RNBaiduMtj;
```
  