
# react-native-config

## Getting started

`$ npm install react-native-config --save`

### Mostly automatic installation

`$ react-native link react-native-config`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-config` and add `RNConfig.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNConfig.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNConfigPackage;` to the imports at the top of the file
  - Add `new RNConfigPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-config'
  	project(':react-native-config').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-config/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-config')
  	```

## Usage
```javascript
import RNConfig from 'react-native-config';

// TODO: What do with the module?
RNConfig;
```
