# Notes for tvOS

Things to research:

- [ ] [Apple TV Human Interface Guidelines][hig]
- [ ] [App Programming Guide][apg]
- [ ] [TVServices Framework Reference][tvs]
- [ ] [tvOS Release Notes][rn]
- [ ] [iOS 9.0 to tvOS 9.0 Diffs][dif]
- [ ] [TVML Framework Reference][tvmlkit]
- [ ] [TVML Language Reference][tvmllang]
- [ ] [TVJS Framework Reference][tvjs]

## General

- Universal purchase?

## App Programming Guide

### Platform Hardware

The new Apple TV has the following hardware specifications:

- 64-bit A8 processor
- 32GB or 64GB of storage
- 2GB of RAM
- 10/100Mbps Ethernet
- WiFi 802.11a/b/g/n/ac
- 1080p resolution
- HDMI
- New Siri Remote / Apple TV Remote

### Traditional Apps

- Can use storyboards and most of the classes your are used to.
  
- Frameworks inherited from iOS:
  
    Accelerate
  
    AudioToolbox
  
    AudioUnit
  
    AVFoundation
  
    AVKit
  
    CFNetwork
  
    CloudKit
  
    CoreBluetooth
  
    CoreData
  
    CoreFoundation
  
    CoreGraphics
  
    CoreImage
  
    CoreLocation
  
    CoreMedia
  
    CoreSpotlight
  
    CoreText
  
    CoreVideo
  
    Darwin
  
    Foundation
  
    GameController
  
    GameKit
  
    GameplayKit
  
    GLKit
  
    ImageIO
  
    MachO
  
    MediaAccessibility
  
    MediaPlayer
  
    MediaToolbox
  
    Metal
  
    MetalKit
  
    MetalPerformanceShaders
  
    MobileCoreServices
  
    ModelIO
  
    OpenGLES
  
    SceneKit
  
    Security
  
    simd
  
    SpriteKit
  
    StoreKit
  
    Swift Standard Library
  
    SystemConfiguration
  
    UIKit

### Client-Server Apps

- Useful for apps that are serving media content.
  
- New TVJS + TVML
  
- Template-based UIs
  
- Xcode Project has simple app delegate class that loads a remote JavaScript file that details how your app works and loads UI via remote TVML files.
  
- Reference App Programming Guide for tvOS, Figure 2-1
  
  -

**TVML**



**TVJS**



### Resource Limitation

- No persistent local storage; All persistence must be handled by iCloud or a custom back end.
- Maximum size of app: 200 MB
- On-Demand Resources are your friend
- Data is never deleted while app is running; may be deleted otherwise.

### User Interaction

- Focus
  - "Highlighted but not selected"
  - Mainly handled by the OS's "FocusEngine" but can be customized.
- On Screen Keyboard
- Remotes
  - Siri / Apple TV Remote
    - Bluetooth 4.0 & IR
    - Accelerometer & Gyroscope
    - Touch pad
    - Physical Buttons
    - Mic
  - Game Controllers

### Other Stuff

- Targeting tvOS only
  - "Use the #define TARGET_OS_TV 1 macro when you need to create code that targets tvOS only."
  - Swift?


- TVServices Framework & "Top Shelf" App Extension
  - Your app can now be on the top row.
  - Your app provides 5 slots on the top shelf
- Parallax images
  - two-layered images.





<!------- Sources ------->

[hig]: https://developer.apple.com/tvos/human-interface-guidelines/
[apg]: https://developer.apple.com/library/prerelease/tvos/documentation/General/Conceptual/AppleTV_PG/
[tvs]: https://developer.apple.com/library/prerelease/tvos/documentation/TVServices/Reference/TVServices_Ref/
[dif]: https://developer.apple.com/library/prerelease/tvos/releasenotes/General/tvOS90APIDiffs/index.html#//apple_ref/doc/uid/TP40016577
[rn]: https://developer.apple.com/library/prerelease/tvos/releasenotes/General/RN-tvOSSDK-9.0/index.html#//apple_ref/doc/uid/TP40016575
[tvmlkit]: https://developer.apple.com/library/prerelease/tvos/documentation/TVMLKit/Reference/TVMLKit_Collection/
[tvmllang]: https://developer.apple.com/library/prerelease/tvos/documentation/LanguagesUtilities/Conceptual/ATV_Template_Guide/
[tvjs]: https://developer.apple.com/library/prerelease/tvos/documentation/TVMLJS/Reference/TVJSFrameworkReference/