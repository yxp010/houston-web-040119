# Intro to Object Orientation

Lecture notes: https://drive.google.com/file/d/1n4a6Ui4Io1jVPzVwpUqGu3Qsw_oYXVG5/view?usp=sharing

## Objectives

* Define `object` in programming domain
* Explain the concept of sending messages
* Create a class and instantiate an instance of the class
* Explain the difference between a class and an instance
* Pass arguments to `new` by defining an initialize method in class
* Create instance methods
* Call methods on the implicit or explicit `self`
* Define attribute readers and writers using `attr_` macros
* Get more practice with array compositions (`each`, `map`, `select`/`filter`)
* Explain the need for variable scope and why it's important to not utilize global variables

## Deliverables

Here is a naive implementation of a bank account in Ruby using only a hash which stores key-value pairs.

```ruby
bank_account = {"owner": "Vidhi", "balance": 1000}
```

Write an implementation of a bank account that meets the following requirements:

* can print the balance of the account
* can deposit money into the account
* can withdraw money from the account
* keeps track of the account number
* keeps track of the customer id of the account
