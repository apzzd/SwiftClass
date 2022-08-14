# Swift Examples

The file SwiftExamples.swift has some examples of code in Swift that might help you debug or code something cool, and this file explains that code. 😎

### Creating variables

```
let name: String = "Bob"
let hair: CGColor = CGColor(red: 0.70, green: 0.35, blue: 0.0, alpha: 1)
let age: Int = 42
let pets: [String] = []
let dateBorn: Date
let friend: (String, Int) = ("Carl", 41)
```

The code above shows some examples of variables with different **data types.** In Swift, when declaring a variable, you can also declare its data type by adding ```: [DataType]``` right after the name of the variable. Setting the data type keeps you from setting a variable to the wrong thing, so it helps you avoid errors. You don't have to set the data type, though.

You an also let it be changed or make it forever keep its value when declaring it, by using ``` let ``` or ``` var ```. ``` let ``` makes the variable **immutable**, or unchangeable. ``` var ``` makes the variable **mutable**, or changeable.

Some examples of data types are:
  - ``` String ```
  - ``` Int ```
  - ``` Float ```
  - ``` Date ```
  - ``` CGColor ```

You can also have variables that are **arrays** of data types. For example

```
let pets: [String] = []
```

sets the variable "pets" to an empty array of strings. If we had written 

```
let pets: [String] = ["Dog", "Cat"]
```

"pets" would be an array with the **elements** "Dog" and "Cat" .

### Printing values to the screen

```
print("This will be printed! ♥")

let sampleString: String = "~ SaMpLe StRiNg ~"

print("Here is a sample string:")
print("  '\(sampleString)' ")
```

The first line of the code above just prints "This will be printed! ♥" to the console of whatever editor you're using. If you're using the online Swift simulator, it will be printed off to the right.

The second part is a bit trickier. Remember how you can set variables in Swift? We set one called "sampleString" which has type ```String``. After that, we printed it with quotes around it. You can print **any variable, with any type** by putting it inside ```\()``` in a string which you print.
