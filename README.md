# flight_booker

## What it is:
* This is an imaginary Flight Booker app. A project to get familiar with advanced forms and Active Record.

* This project creates necessary steps to book one-way flights.

* Users can search flights using form of dropdown menus covering ```depearture```, ```arrival```, ```date``` and ```number of passengers```.

* Then, user can select a flight from available options and proceeds to enter passsenger informations. 

* After a successful booking, each passenger receives confirmation email about the booking.

* This project **does not foucs on styling**. However, I didn't like the way it looked so I added little bit of styling using [Bulma](https://bulma.io).

## What I learned:
I learned how to use Rails advanced forms (```accepts_nested_attributes_for```) and seed the database with example flights. Also, get to implement the **mailer** functionality for the first time in a Rails app (might be the coolest part :D).

## Check it out:
You can check it out on heroku. Click [here](https://immense-oasis-72394.herokuapp.com/).

![book1](https://user-images.githubusercontent.com/93445248/169815588-bddfdea2-e440-4b27-a9fc-8031466a3c35.gif)


## Getting Started:

Note: *You need to generate mailer to use the mail functionality in you local machine see [how](https://guides.rubyonrails.org/action_mailer_basics.html).*

Clone the repo to your local machine:
```
$ git clone https://github.com/egemen-github/flight_booker.git
```
Next, install the needed gems:
```
$ bundle install
```
Then, Migrate:
```
$ rails db:migrate
```
Seed the database:
```
$ rails db:seed
```
Run the server:
```
$ rails server
```
Finally, you can open it on your browser using address bellow and start booking flights :)
```
http://127.0.0.1:3000
```
