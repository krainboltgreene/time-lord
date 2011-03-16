time-lord
---------
The ruby gem `time-lord` gives extra (needed) methods to the ruby `time` class.
Originally started as gem that gave dwevelopers the `time-ago-in-words` method for the `time` class.
It evolved into a multi-part boost to the `Time` class.


*postscript* This gem was previously called "time-ago-in-words".
I changed this, obviously.


examples
========
Examples:
    >> Time.now.ago_in_words # => "just now"
    >> Time.parse("1942-04-01").ago_in_words # => "7 decades ago"


future
======
  >> Time.yesterday
  >> Time.last_month
  >> Time.last_year
  >> Time.now - 1.year
  >> Time.now + 15.days
  >> Time.last_month.last_day_of_the_month
  >> Time.last_day_of_year

install
=======
`gem install time-lord`


contribute
==========
Whatever you're cool with, really.


authors
=======
* https://github.com/krainboltgreene
* https://github.com/sirupsen


helpers
=======
* https://github.com/wolfwood
* https://github.com/henrikh


credits
=======
* The guy who did the Rails version. I'll find out sometime.