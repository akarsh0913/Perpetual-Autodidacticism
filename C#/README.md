# C#

<p>[Logging Progress Only]</p>

### Variables

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1
{
    class Program
    {
        static void Main(string[] args)
        {
            string characterName = "John";
            int characterAge = 35;
            
            Console.WriteLine("There once was a man named " + characterName + ".");
            Console.WriteLine("He was " + characterAge + " years old.");
            Console.WriteLine("He really liked the name of George.");
            Console.WriteLine("But didn't like being 70.");

            Console.ReadLine();
        }
    }
}
```

### Data Types

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1
{
    class Program
    {
        static void Main(string[] args)
        {
            string phrase = "Have a good day!";
            char grade = 'A'; // char for single characters
            int age = 30; // int doesn't require quotation marks
            int num = -1;
            // There are three data types for decimals: float, double, decimal (less precise to most precise)
            float a = 3.21;
            double b = 0.2;
            decimal c = 3.444;
            bool enrolStatus = true;
            // bool enrolStatus = false;

            Console.ReadLine();
        }
    }
}
```

### Working with Strings

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1
{
    class Program
    {
        static void Main(string[] args)
        {
            string phrase = "Strike with honor.";
            Console.WriteLine(phrase.Length); // returns length of the string
            Console.WriteLine(phrase.ToUpper()); // turns all letters into uppercase
            Console.WriteLine(phrase.ToLower()); // turns all letters into lowercase
            Console.WriteLine(phrase.Substring(0, 6)); // retrieves a substring, format: .Substring(starting_index, no_of_chars)
            Console.WriteLine(phrase.Contains("Academy")); // to find whether a string contains another string/character
            Console.WriteLine(phrase[0]); // Access the character by its index
            Console.WriteLine(phrase.IndexOf("honor")); // Returns the index of string/character
            Console.WriteLine(phrase.IndexOf('z')); // Returns -1 which signifies absence of string

            Console.ReadLine();
        }
    }
}
```

### Working with Numbers

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1
{
    class Program
    {
        static void Main(string[] args)
        {

            // Console.WriteLine(31);
            // Console.WriteLine(-2);
            // Console.WriteLine(3.454);
            // Console.WriteLine(-3423.2424);
            // Console.WriteLine(5+8);

            // Mathematical operations on integer numbers returns an integer value
            // However, mathematical operations on decimal numbers returns a decimal value
            // If performing, mathematical operations on integer and decimal numbers then a double is returned
            // Console.WriteLine(5 / 2);
            // Console.WriteLine(5 / 2.0);

            int num = 6;
            num++; // adds 1 to the variable num | Output: 7
            num = 4;
            num--; // subtracts 1 from the variable num | Output: 3
            // Console.WriteLine(num);
            Console.WriteLine("-----------------------------");
            Console.WriteLine("Math Operations");
            Console.WriteLine("-----------------------------");
            Console.WriteLine("Absolute: " + Math.Abs(-40)); // Returns absolute value (non-negative value of a number)
            Console.WriteLine("Power: " + Math.Pow(3, 2)); // Returns value of X^power | Output: 9
            Console.WriteLine("Square Root: " + Math.Sqrt(44)); // Returns square root of a number
            Console.WriteLine("Max: " + Math.Max(4, 90)); // Returns the bigger value
            Console.WriteLine("Min: " + Math.Min(7, 3)); // Returns the smaller value
            Console.WriteLine("Round: " + Math.Round(7.899)); // Rounds to the nearest value
            Console.ReadLine();

        }
    }
}
```

### Getting User Input

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.Write("Enter your name: "); // .Write() allows the user to write the name in the same line
            string name = Console.ReadLine();
            Console.Write("Enter your age: ");
            string age = Console.ReadLine();
            Console.WriteLine("Hey " + name + "! What's up?");
            Console.WriteLine("Congrats on turning " + age + " today...");

            Console.ReadLine();

        }
    }
}
```

### Converting String to Int

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1
{
    class Program
    {
        static void Main(string[] args)
        {

            // Converting string value to an integer value
            int num = Convert.ToInt32("45");
            Console.WriteLine(num + 6);

            Console.ReadLine();

        }
    }
}
```

### Building a Calculator

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.Write("Enter two numbers: \n");
            // int is not a good choice because if either of the entered number has a decimal value the program will stall
            // int num1 = Convert.ToInt32(Console.ReadLine());
            // int num2 = Convert.ToInt32(Console.ReadLine());
            // int sum = num1 + num2;

            // instead, we can convert the string to double data type
            double num1 = Convert.ToDouble(Console.ReadLine());
            double num2 = Convert.ToDouble(Console.ReadLine());
            double sum = num1 + num2;
            Console.WriteLine("Sum is " + sum);

            Console.ReadLine();

        }
    }
}
```

### Arrays

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1
{
    class Program
    {
        static void Main(string[] args)
        {

            // A variable can only contain a single value
            // To avoid this, we can use another data structure called array which can contain multiple values in a single container

            int[] luckyNumbers = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

            luckyNumbers[2] = 989;

            Console.WriteLine(luckyNumbers[0]); // In arrays, first element is always indexed at 0
            Console.WriteLine(luckyNumbers[1]);
            Console.WriteLine(luckyNumbers[2]);
            Console.WriteLine(luckyNumbers[3]);
            Console.WriteLine(luckyNumbers[4]);
            Console.WriteLine(luckyNumbers[5]);
            Console.WriteLine(luckyNumbers[6]);
            Console.WriteLine(luckyNumbers[7]);
            Console.WriteLine(luckyNumbers[8]);
            Console.WriteLine(luckyNumbers[9]);
            Console.WriteLine("---------------");

            // Creating a new string array object (empty string array)
            // In 'new string[x]', x is the no of elements/values this array will hold
            string[] friends = new string[5];
            friends[0] = "Jim";
            friends[1] = "Mugen";
            friends[2] = "Shinobi";
            friends[3] = "Jade";
            friends[4] = "Sussy Baka";

            Console.WriteLine(friends[0]);
            Console.WriteLine(friends[1]);
            Console.WriteLine(friends[2]);
            Console.WriteLine(friends[3]);
            Console.WriteLine(friends[4]);

            Console.ReadLine();

        }
    }
}
```

### Methods

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1
{
    class Program
    {   

        // static --> keyword
        // void   --> return type
        // Main   --> method's name
        static void Main(string[] args)
        {

            // A method is just a block of code inside a container which can be called to perform a specific task
            // Note: Functions and Methods are closely related but they are not same.
            // This is because a function is a reusable code that isn't tied to any class or object.
            // However, a method can be tied to a class or object and has to be explicitly called in order to work.

            // SayHi();

            // Any value or information given to a method/function is called a parameter.
            // And, a parameter is defined in the parenthesis of that method/function.
            // E.g.

            // SayHi("John");

            // There can be more parameters as well.
            // E.g.

            SayHi("John", 35);
            Console.ReadLine();          

        }

        // Capitalizing the first letter in method's name is a naming convention in C#
        static void SayHi(string name, int age)
        {
            Console.WriteLine("Hello " + name + "! You are " + age + " years old.");
        }
    }
}
```

### Return Statement

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1
{
    class Program
    {   

        // static --> keyword
        // void   --> return type (means nothing or no information is relayed back)
        // Main   --> method's name
        static void Main(string[] args)
        {
            // Console.WriteLine(cube(15));
            int cubedNumber = cube(5);
            Console.WriteLine(cubedNumber);
            Console.ReadLine();          

        }

        // Here return type is int, so an integer is sent back as an information.
        static int cube(int num)
        {
            int result = num * num * num;
            return result; 
            // return statement can be used to break out of this method/function and return a value to the caller.
        }
    }
}
```