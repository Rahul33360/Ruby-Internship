# Installation Steps (for windows) 
----------------------------------------
# Day1
### Step 1 - Install Ruby from official site (https://rubyinstaller.org/).    
### step 2 - To check it is properly installed or not. Type ruby -v (in cmd).   
### step 3 - Now install the gem using cmd(admin) -> gem install rails     
### step 4 - Check it is installed or not using command -> rails -v    
### step 5 - Then create app in a a seprate folder for rails use command -> rails new YOUR_APP_NAME    
### step 6 - Now navigate to the folder in cmd. Then run the command to start the server -> rails s   
### step 7 - Then copy the url (default 3000) and paste on the browser if it is working then it is successfully installed.   
### step 8 - If you want to change the port number then only use the command -> rails s -p YOUR_PORT_NUM.    

## Some rails commands 

#### create this rails application -> rails new App_Name -d  postgresql   (here d for custom database)
#### to start ther rails server -> rails s    
#### create rails database -> rails db:create     
#### now setup the database.yml file by pasting the code ->   
###### development:   
######  <<: *default     
######  database: postgres     
######  username: postgres    
######  password: YOUR_PASSWORD     

#### Then 

## Folder Structuring
#### app -> all files of MVC 
#### bin -> provides supports for the commands that we run
#### config -> helps to manage the configration for production,testing and development
###### config--> environments -->  for production,testing and development enviroments  
###### config--> locales (for which language you want to show to user)   
###### config--> importmap (related to liberary)   
###### config--> routes (by this url related query will be done)
#### db folder(all the database related queries like seeding, etc)    
#### log wil keep all the details about app like errors,time,response success/fail,etc    
#### public (will have public assets like favicon,png,images,etc)
#### tmp (for cache related files)
#### vendor (for third party liberary)   
#### Gemfile (keep liberary versions)


# DaySprings – Ruby & Rails Learning Notes

---

## Day 1 – Ruby & Rails Basics

### Ruby

* Ruby is a **dynamically typed**, **open-source** programming language known for **simplicity** and **developer productivity**.
* Everything in Ruby is an **object**.
* Latest stable version: **Ruby 3.x**.
* Ruby generally follows **SOLID principles** (with limited emphasis on Interface Segregation due to Ruby’s dynamic nature).

### Rails

* Rails is a **web application framework built on Ruby**.
* It helps developers build applications faster by providing conventions and boilerplate code.
* Latest major version: **Rails 8.x**.

* Ruby alone can create applications, but frameworks like Rails:

  * Reduce development time
  * Provide structure
  * Generate boilerplate code automatically

### Creating a Rails Project

Rails projects can be created in multiple ways:

1. `rails new project_name`
2. `rails new project_name --api` (API-only / two-tier architecture)
3. **Scaffold** (auto-creates MVC components)

### Commands to Remember

* `ruby --version`
* `rails --version`
* `gem install rails`
* `rails new ProjectName`

---

##  Day 2 – PostgreSQL, Scaffold & Console

### Project with PostgreSQL

Main database commands:

* `rails db:create` → Creates the database
* `rails db:migrate` → Applies schema changes
* `rails db:seed` → Inserts data from `seeds.rb` file(first create the seed.rb file).

* Correct order is important: **create → migrate → seed**

### Scaffold

* Scaffold generates the **complete skeleton** of an application:

  * Model
  * Controller
  * Views
  * Routes

Command: rails generate scaffold Customer name:string email:string     

Controller-only generation: rails generate controller Customers    

### Project Creation Commands

* rails new project_name
* rails new project_name -d postgresql
* rails new project_name -d postgresql --skip-test

### Rails Console

* rails console (provides an environment where we can run Rails commands).

---

##  Day 3 – Rails Features & File Structure

### Main Features

#### Syntactic Sugar (Rails auto-generates MVC components without writing everything manually).

#### Convention Over Configuration (Rails uses naming conventions to auto-configure behavior).

```bash
Naming Rules:
rails generate model Customer   (to generate Customer model, and first letter will be capital like here "Customer" )
```

### Config Folder

Controls how the Rails application behaves.

Important files:

* `config/database.yml` → Database configuration
* `config/routes.rb` → Maps URLs to controllers
* `config/application.rb` → Main app configuration
* `config/environment.rb` → App entry point
* `config/environments/` → environment-specific settings


##  Day 4 – app Folder & Ruby Basics

### app Folder

Main application code lives here.

* **controllers** → Handle requests & responses
* **views** → UI files (`.html.erb`)
* **models** → Database logic
* **javascript** → Frontend behavior (Rails 8 integration)
* **mailers** → Sending emails
* **jobs** → Background tasks

### Ruby Data Types

* String (mutable)
* Numbers (integer, float) 
* Symbol (immutable)
* Boolean (true, false, nil)
* Arrays
* Hashes

All data types are objects.

### Variables

* Local → `name`
* Global → `$name`
* Instance → `@name`
* Class → `@@name`
* Constant → `NAME`

---

## Day 5 – Methods, Type Casting & Product Scaffold

* Single-line → `#`   
* Multi-line → `=begin`  `=end`  

### Type Casting

* User input is always a **String**.
* Ruby does **not** do implicit type casting.
* so for the integer inputs we need to convert it into number.

Examples:

* `"10".to_i`
* `10.to_s`
* `"10.5".to_f`

### Product Scaffold

* Command: rails generate scaffold Product name:string description:text price:decimal stock:integer is_active:boolean

* After any DB-related change run: rails db:migrate


### Ways to Insert Data

1. **UI** (Rails-generated forms)
2. **Manual SQL (DBeaver)**
3. **Seeds file (`db/seeds.rb`)**
4. **Rails Console**

Example SQL:

```sql
INSERT INTO product1s (name, description, price, stock, is_active, created_at, updated_at)
VALUES ('IQ', 'The IQ new product', 80, 2, TRUE, '2026-01-16', '2026-01-16');
```

Example seed:

```ruby
Product1.create(name: "P1", description: "The P1 product", price: 900, stock: 30, is_active: true)
```
---

**Day 6 – Ruby Loops & Enumerable Methods**

##  Ruby Loops

### `for` Loop

Used when the range or count is known.

```ruby
arr = [2, 4, 6, 8, 10, 12]

for i in 10..15   # inclusive range
  print i
end
```

Key Points:

* Automatically increments
* Manual increment does not work
* `..` includes both start and end values

---

### `while` Loop

Executes while the condition is true.

```ruby
i = 0
while i <= 10
  puts i
  i += 1
end
```

Key Points:

* Condition checked before execution
* Manual initialization and increment required

---

### `loop do`

Infinite loop with explicit exit condition.

```ruby
k = 0
loop do
  puts "student : #{k}"
  k += 1
  break if k > 30
end
```

Key Points:

* Runs continuously
* `break` is mandatory to stop

---

### `until` Loop

Opposite of `while`.

```ruby
c = 0
until c > 15
  puts c
  c += 1
end
```

Key Points:

* Runs when the condition will be false

---

### Loop Control Keywords

```text
break → exits the loop
next  → skips current iteration
redo  → repeats current iteration
```

---

##  Enumerable Methods

### Array Used

```ruby
arr = [2, 4, 6, 8, 10, 12]
```

---

### `select` and `select!`

```ruby
arr.select { |num| num > 4 }
arr.select! { |num| num > 4 }
```

Key Difference:

* `select` returns filtered values
* `select!` modifies the original array

---

### `reject` and `reject!`

```ruby
arr.reject { |num| num > 2 }
arr.reject! { |num| num > 2 }
```

Key Difference:

* `reject` keeps original array unchanged
* `reject!` permanently modifies it

---

### `any?` and `all?`

```ruby
arr2 = [1, 2, 3, 4, 5]

arr2.any? { |num| num > 5 }
arr2.all? { |num| num > 0 }
```

Meaning:

* `any?` → at least one condition is true
* `all?` → all conditions are true

---

### `map`, `collect`, `each`

```ruby
arr2.map { |num| num ** 2 }
arr2.collect { |num| num ** 2 }
arr2.each { |num| num ** 2 }
```

Key Difference:

* `map` and `collect` return a new array
* `each` returns the original array

---

## Key Learning (Day 6)

* Ruby offers multiple loop types for different scenarios
* Enumerable methods reduce manual looping
* Methods end with `!` change the data in-place (does changes in same array)

---
**Day 7 – Ruby OOPS (Inheritance & Method Overriding)**
---
### Classes & Objects

* A class is a blueprint for creating objects.
* An object is an instance of a class.
* Methods define the behavior of an object.
* Instance variables (`@variable`) store object-specific data.

---

### Inheritance

* Inheritance allows one class to reuse another class’s methods and variables.
* Child classes inherit behavior from parent classes using `<` symbol.
* Helps reduce code duplication.
* Parent instance variables are accessible in child classes.

---

### Method Overriding

* Child class can redefine a method from the parent class also known as Overriding.   
* Ruby always calls the child method first if names match.  

---

### `super` Keyword

* `super` calls the parent class method.
* Can be used with or without arguments.
* Helps extend parent functionality instead of replacing it.

---

### Method Lookup

* Ruby searches for methods in this order:

  1. Current class
  2. Parent class
  3. Object(kernel,module)
  4. Basic Object

* `ancestors` shows the method lookup whole chain.

---

### Built-in Reflection Methods

* `respond_to?` checks if an object can respond to a method.
* Useful for safer method calls and debugging.

---

### Method Overriding Example (Concept)

* Same method name in parent and child.
* Parent logic can be reused using `super`.
* Child method changes output or behavior.

---

# Day 8 – Conditional Statements & Methods in Ruby
---
## 1. Conditional Statements

### if / else

Check a condition and run code accordingly:

```ruby
stock = 20
if stock > 0
  puts "Item available"
else
  puts "Item not available"
end
```

### Ternary Operator

Shorter version of if/else:

```ruby
is_active = true
puts is_active ? "Active" : "Not Active"
```

### elsif

Check multiple conditions in sequence:

```ruby
price = 250
if price < 200
  discount = 10
elsif price < 300
  discount = 20
else
  discount = 5
end
puts discount
```

### case / when

Cleaner way to check multiple values:

```ruby
case price
when 100..200 then discount = 10
when 201..300 then discount = 20
else discount = 5
end
puts discount
```

### unless

Runs code only if the condition is false (it is opposite of if):

```ruby
email = nil
puts "Email missing" unless email
```

---

## 2. Methods & Access Modifiers

Ruby lets you control who can use your methods:

* public → accessible anywhere
* private → can only be called inside the class
* protected → accessible in class and subclasses

Example:

```ruby
class Product
  def public_method
    puts "I am public"
  end

  private
  def private_method
    puts "I am private"
  end
end
```

# 9 Rails Models: Customer & Product Validations

## Customer Model (`Customer < ApplicationRecord`)
---

### **Built-in Validations**

* Name is **required** and limited to 3–20 characters:

```ruby
validates :name, presence: true, length: { minimum: 3, maximum: 20 }
```

* Email is **required** and **unique**:

```ruby
validates :email, presence: true, uniqueness: true
```

### **Custom Validations**

* **Profanity check** for `name` and `email`:

```ruby
validate :deny_profanity

def deny_profanity
  profanity_words = /lopper|nonsence|idiot/i
  errors.add(:name, "is inappropriate") if name =~ profanity_words
  errors.add(:email, "is inappropriate") if email =~ profanity_words
end
```

* Check if email is present:

```ruby
def check_email
  email.present?
end
```

### **Usage Example (Rails Console)**

```ruby
customer = Customer.first
customer.check_email
customer.check_name
```

---

## Product Model (`Product < ApplicationRecord`)

### **Built-in Validations**

* Name, description, stock, price, and is_active are validated:

```ruby
validates :name, presence: true, length: { minimum: 4, maximum: 30 }
validates :price, numericality: { greater_than_or_equal_to: 1 }
validates :stock, numericality: { greater_than_or_equal_to: 1 }, length: { maximum: 500 }
validates :description, length: { minimum: 8, maximum: 460 }, format: { with: /\A[a-zA-Z0-9 ]+\z/, message: "only letters, numbers, and spaces allowed" }
validates :is_active, presence: true, acceptance: true, if: :price?
validates :stock, presence: true, if: :is_active?
```

### **Custom Validation**

* Ensure `is_active` is checked only if `price` and `stock` are present:

```ruby
validate :check_is_active

def check_is_active
  if is_active? && (price.blank? || stock.blank?)
    errors.add(:is_active, "cannot be checked unless price and stock are filled out")
  end
end
```

### **Helper Methods**

* **Check description validity**:

```ruby
def check_validity
  description =~ /\A[a-zA-Z0-9 ]+\z/
end
```

* **Check stock availability**:

```ruby
def check_availability
  stock > 0
end
```

**Apply discount**:

```ruby
def apply_discount(discount_percentage)
  price - (price * discount_percentage / 100)
end
```

 **Calculate total amount** (with discount and stock check):

```ruby
def total_amount
  if check_availability
    apply_discount(10).round
  else
    "Item is not available"
  end
end
```

## Notes with some imp points about code ...-->


1. **Built-in validations cover most use-cases**

   * Presence, uniqueness, numericality, length, format, acceptance, inclusion/exclusion.
   * Saves time and keeps code DRY.

2. **Custom validations enforce business rules**

   * For example:

     * Profanity filters (`deny_profanity`)
     * Stock-price relationships
     * Conditional validations (`is_active` only if price & stock exist)

3. **Use helper methods in models**

   * Methods like `check_availability`, `apply_discount`, `total_amount` make logic reusable and testable.

4. **Always check dependencies**

   * Example: `is_active` cannot be true unless `price` and `stock` are present.
   * Helps maintain **data integrity**.

5. **Display errors properly in views**

   * Use `@model.errors.full_messages` to show user-friendly error messages.
   * Prevents saving invalid data and improves UX.

6. **Use format validations to restrict unwanted input**

   * Avoid special characters in fields like `name` and `description`.
   * Example: `/\A[a-zA-Z0-9 ]+\z/`

7. **Conditional validations are powerful**

   * Use `if:` or `unless:` to run validations only under certain conditions.
   * Example: `validates :stock, presence: true, if: :is_active?`

8. **Never manually edit `schema.rb` or database fields**

   * Always use **migrations** to make changes.
   * Prevents schema inconsistency.

9. **Keep validation errors concise and informative**

   * Helps users understand what went wrong without confusing messages.

10. **Test validations in Rails console**

    * Always try creating invalid and valid records in the console to confirm your rules work.

# Day 10 – Rails Scopes

A **scope** is a custom query defined in a Rails model. It is mainly used when the same query is needed multiple times.
---

## Scope Examples

### 1. Out of Stock product1s

Fetch product1s whose stock is zero or less.

```ruby
scope :out_of_stock, -> { where("stock <= ?", 0) }
#or
scope :out_of_stock, -> { where(stock: 0) }
```

---

### 2. Writing Custom / Raw SQL Query

Scopes can also contain raw SQL queries.

```ruby
scope :test_scope, -> { query {} }
```

---

### 3. Whitelisted product1s

Fetch product1s whose IDs are in a given list.

```ruby
scope :whitelisted_product1s, -> { where("id IN (?)", [1, 2, 3]) }
```

---

### 4. Unique Emails

Fetch distinct email values from records.

```ruby
scope :unique_emails, -> { where(email: "sudha@gmail.com").select(:email).distinct }
```

---

### 5. Blacklisted Customers (Parameterized Scope)

Scopes can accept parameters.

```ruby
scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }
```

Usage:

```ruby
@customers = Customer.blacklisted_customers([3, 6, 9, 10])
```

---

## Method Chaining

Scopes can be chained together because they return ActiveRecord relations.

Example:

```ruby
Product.out_of_stock.whitelisted_product1s
```

---

## Controller Examples ---like how will use

### Customers Controller

```ruby
def index
  @customers = Customer.all
  # @customers = Customer.blacklisted_customers([1,2,3])
end
```

---

### product1s Controller

```ruby
def index
  @product1s = Product.out_of_stock
end
```

---



# Day 11 - Notes

# Task 1. Generating a Controller
### rails generate controller admin
### Rails creates files related to controller and views (Action Pack).
### these are the file will be genereted
```ruby 
app/controllers/admin_controller.rb → controller file   
app/views/admin/ → folder admin views    
app/helpers/admin_helper.rb → helper file   
test/controllers/admin_controller_test.rb → controller test file   
```
--- 

Task 2. Generating a Model
To generate: 
```ruby 
rails generate model admin
```

```ruby 
app/models/admin.rb → model file
db/migrate/XXXXXXXX_create_admins.rb → migration file
test/models/admin_test.rb → model test file
test/fixtures/admins.yml → test data

then run this command: rails db:migrate is used to modify the database schema   
```
* If we Deleting show.html.erb file
* Error: ActionController::UnknownFormat in CustomersController#show CustomersController#show is missing a template for this request format.

why?
Show action(method) exists in the controller and when we hit that url it will try to call the show.html.erb view file, which is missing.

---

# Try this in routes:
```ruby 
resources :products, except: [:show]
resources :products, only: [:new, :destroy]
```
### To skip a route from being created via resources we use except
### To create only a specific set of routes we use only.

### Then If we try to open show page
* URL: /products/1    -> (here 1 is id to show)  
```ruby 
Error we get: We will get this error,ActionController::RoutingError , No route matches [GET] "/products/1"
```



