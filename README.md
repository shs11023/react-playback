# React Native Media Playback

Media Plaback in React Native

## Installation

```bash
npm install react-native-playback --save
```

## Project setup and initialization


* In `android/settings.gradle`

```gradle
...
include ':react-native-playback', ':app'
project(':react-native-playback').projectDir = new File(rootProject.projectDir, '../node_modules/react-playback/android')
```

* In `android/app/build.gradle`

```gradle
...
dependencies {
    /* YOUR DEPENDENCIES HERE */
    compile "com.facebook.react:react-native:+"
    compile project(":react-native-playback") // <--- add
}

```

* Register Module (in MainApplication.java)

```java
import in.media.playback.RNMediaPlaybackReactPackage;

public class MainActivity extends ReactActivity {
  ......

  @Override
  protected List<ReactPackage> getPackages() {
      return Arrays.<ReactPackage>asList(
          new MainReactPackage(),
          new RNMediaPlaybackReactPackage() // <--- Add
      );
  }
  ......

}
```


## Usage

#### Import

```javascript
var MediaPlayback = require('react-native-playback');
```

## Author

[Hyeonsu Seo](http://shs11023.github.io "Hyeonsu's HomePage").
