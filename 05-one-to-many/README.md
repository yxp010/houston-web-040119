# One to Many Relationships

Lecture Notes: https://drive.google.com/file/d/1LDrPGC5JqD_THsSagw3SPO5Yj2wMnc1-/view?usp=sharing



School, flatiron = School.new("flatiron")
flatiron.students = ["Robert", "Luis", "Justin"]

Student, Luis = Student.new("Luis")

flatiron.students => [<student "Luis">]


## Objectives

* Implement one object to many objects relationship and Demonstrate single source of truth
    One object has many objects
One object belongs to another object
Infer type of method (class or instance) through naming conventions
Practice passing custom objects as arguments to methods


## Deliverables

* Create a User class. The class should have these methods:
  * `#initialize` which takes a username and have a reader method for the username
  * `#tweets` that returns an array of Tweet instances
  * `#post_tweet` that takse a message, creates a new tweet, and adds it to the user's tweet collection
* Create a Tweet class. The class should have these methods:
  * `Tweet#message` that returns a string
  * `Tweet#user` that returns an instance of the user class
  * `Tweet.all` that returns all the Tweets created.
 
