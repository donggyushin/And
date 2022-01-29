# And
Syntactic sugar for Swift initializers

## Usage
```
let label = UILabel().and {
 $0.textAlignment = .center
 $0.text = "Hello, World!"
}
```
is equal with 
```
let label: UILabel = {
  let view = UILabel()
  view.textAlignment = .center
  view.text = "Hello, World!"
  return view
}()
```


Use ```with()``` when copying the value types.
```
let newFrame = oldFrame.with {
  $0.size.width = 200
  $0.size.height = 100
}
newFrame.width // 200
newFrame.height // 100
```

Use ```do()``` to do something with less typing.
```
UserDefaults.standard.do {
  $0.set("donggyu", forKey: "username")
  $0.set("donggyu@gmail.com", forKey: "email")
}
```

## Installation
- cocoapod
```
pod 'And', :git => 'https://github.com/donggyushin/And.git'
```
- spm
```
File > Add Packages > https://github.com/donggyushin/And
```
