# Direct Carrier Billing by Digital Virgo
![Swift Version](https://img.shields.io/badge/Swift-5.6.1-F16D39.svg?style=flat)
![Platform](https://img.shields.io/badge/Platform-iOS-green.svg)

Documentation and example of Digital Virgo Direct Carrier Billing.

Following this guide your app will be technically enabled to be promoted and integrated with Digital Virgo mobile payment.

After the integration of the sdk the resultant app can check if the user coming from Digital Virgo acquisition (optionally with explicit login with msdisdn+pin) and can check expiration date and several information.

## Requirements
- iOS Deployment Target: 11.0
- Swift 5.6.1 +

### How to import in Xcode using Swift Package Manager:

1. Add package from "*File*" &rarr; "*Add Packages...*" &rarr; "*Search or Enter Package URL*"

2. Input "https://github.com/DVS-devtools/DCBApiExtSDKPackage"

3. Under "*Dependency Rule*" select "*Up to Next Major Version*" and input "*5.0.1*"

4. Press the "*Add Package*" button

5. Wait for package fetching

6. Verify that "*DCBApiExtSDKPackage*" is checked and select the target to add the package

7. Press the "*Add Package*" button

8. Two extra package dependencies will be automatically imported: "*DCBApiExtSDK*" and "*NewtonSDK*"

9. In the application target, under "*Frameworks, Libraries, and Embedded Content*" verify the presence of the "*DCBApiExtSDKPackage*" library

## Example
To use Direct Carrier Billing by Digital Virgo, use the following code.
```swift
let client = DCBApiClient(baseDomain: URL(string:"<FINGERPRINT_DOMAIN>")!,
                          confInfoDomain: URL(string:"<SERVICE_DOMAIN>")!,
                          apikey: "<YOUR_APIKEY>",
                          catalog: "<YOUR_CATALOG>",
                          country: "<YOUR_COUNTRY>",
                          namespace: "<YOUR_NAMESPACE>")

DCBUserManager(client: client).checkFlowDCB(isActive: false) { date, error in
    if let dcbUser = DCBUserManager.dcbUser {
        //User is recognised as Digital Virgo Acquisition

       if let date = date {
           //User is subscribed
       } else {
           //User expired, not subscribed
           //user must pay again to access the product
       }
   } else {
       //Normal user discover the app from AppStore
   }
}
```

## Conclusion
Hooray! You've finished the integration!    

For further assistance, please get in touch with the Team by dropping an email to dvs-apps@digitalvirgo.com
