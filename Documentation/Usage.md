# Usage

### Use optionals in a more readable way

```swift
import Emptiness

let text: String? = nil

if text.content.uppercased() == "yes" || text.isEmpty {
    print("Look ma no question marks or forced unwrapping")
}

```
