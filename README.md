# JDSActivityViewController

by [@jasdev](https://twitter.com/jasdev)

JDSActivityViewController is a lightweight UIActivityViewController subclass,
which can be configured to display a URL to be shared. This was inspired by
Tweetbot and Tumblr's usage of this customization.

## Screenshots

![](http://i.imgur.com/0u1io9i.png)

## Installation

### Cocoapods

`pod 'JDSActivityVC'`

### Carthage

*soon*

## Usage

```swift
import JDSActivityVC

/* Inside of a UIViewController */
let imageURL = NSURL(string: "http://i.imgur.com/aJYZ20v.gif")!

// Normal UIActivityViewController initializer
let sampleActivityViewController = JDSActivityViewController(activityItems: ["Two Dogs", imageURL], applicationActivities: nil)

// Set display URL
sampleActivityViewController.link = imageURL

presentViewController(sampleActivityViewController, animated: true, completion: nil)
```
