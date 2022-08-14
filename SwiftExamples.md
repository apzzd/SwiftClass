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
  - ``` Bool ```

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

### Sample functions

```
func myFunction(_ num: Int) -> String {
    return "Your number was \(num + 5). Just kidding! It was actually \(num)."
}

func longerFunction(_ n1: Int, _ n2: Int) -> Bool {
    return n1 == n2
}
```

Above, we made two **functions**. `myFunction` takes in one ```Int``` and returns a ```String```, and ```longerFunction``` takes in two ```Ints``` and returns a ```Bool``` ("bool" is short for boolean, true or false). 

To declare a function, you write 

```
func [function name]([var name]: [type]) -> [return type] {
    [function body]
}
```

What's the underscore before the variable name in the first function? Well if you write the variable like ````v1 v2: [type]``` "v1" is what the variable will be **called in the declaration**, so ```function(v1: "blah")```. "v2" will be what the variable is **called inside the function**, so ```return v2```. If you make the first variable name be "_", you can call the function without having to write the variable name, so ```function("blah")```. A function doesn't have to take in any variables at all.

The return type is what sort of value the function is supposed to return. With ```myFunction```, the return type is String, so ```myFunction``` can only return ```String```s. If a return type isn't included, the function can return no value or return a value with any data type. 

The body of the function is just some code that is called when you run the function. It can use the variables passed in to the function. 

### Sample enum

```
enum Weather {
    case rainy
    case sunny
    case foggy
    case cloudy
    case snowy
}
```

That block of code above is called an **enum**. Enums are sort of like data types that are invented by the coder. They can even be passed into functions, as we will see. 

Enums are groups of possible values of a variable with a specific type. For example, we can set

```
let weather: Weather = Weather.foggy
```

and ```weather``` will be set to the value ```Weather.foggy```. We'll see how we can use enums later.

### Using switch case

```
var person = "Bob"

switch person {
case "Alice":
    print("I know you!")
case "Carl", "Dave", "John":
    print("I'm sorry, what did you say your name was?")
case "Elaine":
    print("Hello, friend!")
default:
    print("Sorry, I don't know you.")
}
```

**Switch cases** run certain lines of code based on the value of a specific variable. In the code above, the switch case prints out different things based on the value of the variable ```person```. All switch cases are written in the format 

```
switch [variable] {
case [someValue]:
  [code]
case [someValue2]:
  [code]
 .
 .
 .
 default:
  [code]
}
```

Switch cases **must always have a default, unless the variable has a type where its value can only be a limited set of things.** This is because there are an infinite number of possible ```String```s and ```Int```s and ```CGColor```s, and if there is no default, the program doesn't know what to do when it runs into an exception. For ```Bool```s and enum types, there are a limited set of values for the variable.
