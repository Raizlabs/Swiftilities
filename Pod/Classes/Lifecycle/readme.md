# View Controller Lifecycle Behaviors

This is a collection of handy [View Controller Lifecycle Behaviors](http://irace.me/lifecycle-behaviors), useful for formalizing reusable bits of common lifecycle-dependent functionality. 

## Included Behaviors

- [Nav Bar Hairline Fade](Behaviors/Nav-Bar-Hairline-Fade)
- [Nav Bar Title Transition](Behaviors/Nav-Bar-Title-Transition)


# Usage

Behaviors are implemented by consuming `ViewController`s simply by leveraging the category method `addBehaviors(_ behaviors: [ViewControllerLifecycleBehavior]` in `viewDidLoad`: 
```
override func viewDidLoad() {
    super.viewDidLoad()
    let behavior1 = MyBehavior()
    let behavior2 = AnotherBehavior()
    addBehaviors([behavior1, behavior2])
}
```

## Default Behaviors

Default behaviors are behaviors that are automatically injected into all view controllers using method swizzling. This may be convenient for functionality akin to analytics screen tagging, for instance. Default behaviors are injected using:
```
let behavior = MyBehavior()
DefaultBehaviors(behaviors: [behavior]).inject()
```
