# Swift3-Analytics

Simple class to make Google Analytics to work with Swift 3 and log screens and actions more simply from any class withing your project. 
Read more about adding Google Analytics to Xcode project in my [blog post](https://iwanttowriteanapp.wordpress.com/2016/12/30/google-analytics-for-swift3-simplified). 

###Usage
Add AnalyticsHelpers.swift file to your project (your should add Google Analytics library first)

To log screen call
 
 ```
 AnalyticsHelper().analyticLogScreen(screen: "Home Screen");
 ```
 
To log action call

  ```
	AnalyticsHelper().analyticLogAction(category: "Media", action: "Play")
