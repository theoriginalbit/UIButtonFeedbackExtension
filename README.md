> [!TIP]
> Did you know Apple introduced a really nice class, [`UIAction`](https://developer.apple.com/documentation/uikit/uiaction), in iOS 13?
>
> Using the actions API you no longer need to use the Objective-C target API and can instead use closures. An equivalent of this library would be:
> ```swift
> let hapticGenerator = UISelectionFeedbackGenerator()
> let hapticAction = UIAction { _ in
>     hapticGenerator.selectionChanged()
> }
> button.addAction(hapticAction, for: .touchUpInside)
> button.addAction(hapticAction, for: .touchDown)
> ```

# UIButton Extension – Haptic Feedback 

A very simple library that provides a `UIButton` extension that enables use of [Haptic Feedback](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/) on touch down, touch up, or both.

To enable haptics it is as simple as the following

```swift
let button = UIButton()

button.feedbackOnTouchUp = true
button.feedbackOnTouchDown = true
```

You may also access the `UISelectionFeedbackGenerator` under the read-only `feedbackGenerator` property. Note, this generator will be `nil` if both of the feedback settings are `false`.
