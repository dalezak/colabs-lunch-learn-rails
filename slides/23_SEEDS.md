## Seeds
- `db/seeds.rb`
```
reason = Reason.create(text: "Perfect For Startups") 
reason.points.create(text: "Lets you write less code")
reason.points.create(text: "Great rapid prototyiping")
reason.points.create(text: "Lets you have smaller teams")
reason.points.create(text: "Maintainable and scaleable")
puts reason.inspect

reason = Reason.create(text: "Development Philosophy") 
reason.points.create(text: "More than development framework, also development philosophy")
reason.points.create(text: "Learning Rails makes you better developer for other languages")
puts reason.inspect

reason = Reason.create(text: "Convention Over Configuration") 
reason.points.create(text: "Following Rails conventions, lets developers write less code")
reason.points.create(text: "Worry less about plumbing, focus more on business logic ")
puts reason.inspect

reason = Reason.create(text: "Separation Of Concerns") 
reason.points.create(text: "MVC (Model-View-Controller) baked into the framework")
reason.points.create(text: "Enforce good project structure, helps reduce spaghetti code")
puts reason.inspect

reason = Reason.create(text: "DRY (Don't Repeat Yourself)") 
reason.points.create(text: "Core principles at heart of Rails")
reason.points.create(text: "Helpers and partials makes it easy to keep things DRY")
puts reason.inspect

reason = Reason.create(text: "Time & Cost Eficient") 
reason.points.create(text: "Rails helps you quickly build the MVP to enter the market")
puts reason.inspect

reason = Reason.create(text: "Ensures  High Quality Product") 
reason.points.create(text: "Supports Test Driven Development")
reason.points.create(text: "Embraces Behaviour Driven Development")
puts reason.inspect

reason = Reason.create(text: "Rails Is Scalable") 
reason.points.create(text: "Resistance to high loads is the significant achievement of Rails")
puts reason.inspect

reason = Reason.create(text: "Secure And Reliable") 
reason.points.create(text: "Built-in system of protection against threats and attacks")
reason.points.create(text: "Protection from SQL Injection")
reason.points.create(text: "Prevent Cross-site Scripting (XSS)")
reason.points.create(text: "Stop Insecure Direct Object Reference or Forceful Browsing")
reason.points.create(text: "Prevents CSRF (Cross Site Request Forgery)")
puts reason.inspect

reason = Reason.create(text: "Support With Strong Ecosystem") 
reason.points.create(text: "Over 147,199 open source gems")
puts reason.inspect

reason = Reason.create(text: "High Quality Talent Pool") 
reason.points.create(text: "Rails has a very developed community")
reason.points.create(text: "RoR- evelopers you get 4-in-1: dedication to coding, motivation to work, high skills in programming, and great experience in what they do")
puts reason.inspect
```
```
rake db:reset
```