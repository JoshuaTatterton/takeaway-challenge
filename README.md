Takeaway Challenge
==================

This is a model of a takeaway which takes in a number of dishes and the price the customer expects it to costs. It then (given no errors like ordering items not on the menu and customer's quoted price being wrong) will send a text to the customer informing them when their order will be delivered.

To use this code first clone the repo to your own machine and run bundle to install all the needed gems. You will need to sign up to twilio and get your own account SID and token as well as your twilio phone number and the phone number you want the text sending to set them as the following environment variables
* ENV["ACCOUNT_SID"]
* ENV["AUTH_TOKEN"]
* ENV["TWILIO_NUM"]
* ENV["PHONE"]

The rspec tests are set up in such a way that these environment variables are not needed and at the same time the texts are not sent.

Task
-----

* The first thing I did was install and add the gem twilio-ruby to the gemfile for next persons use, even though at this point I did not know how to use it.
* Next I went through the first 3 user stories and implementing them all. Using rspec for both my feature and unit tests. There was nothing too overcomplicated with this process, just a matter of some trial and error with getting my method to work and fit the tests.
* The last user story which needed the implementation of twilio for sending texts was far more complicated, taking almost as long as the rest of this challenge put together. The main problem was trying to figure out how to test the functionality without sending texts everytime I test and seen as at that point I had only read about it online I had yet to see exactly how to implement it so test writing was very difficult.
* I also removed any sensitive information in the sending of texts and added them to my environment variables in my terminal and called them from there. This ensures my details are confidential and means all someone has to do is set the environment variables and they can use it straight away.
* I have since completing the project refactored the code to be a bit more streamlined and to follow SRP more closely.
