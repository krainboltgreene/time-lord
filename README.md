time-lord
=========

  - [![Gem Version](https://badge.fury.io/rb/time-lord.png)](https://rubygems.org/gems/time-lord)
  - [![Code Climate](https://codeclimate.com/github/krainboltgreene/time-lord.png)](https://codeclimate.com/github/krainboltgreene/time-lord)
  - [![Build Status](https://travis-ci.org/krainboltgreene/time-lord.png)](https://travis-ci.org/krainboltgreene/time-lord)
  - [![Dependency Status](https://gemnasium.com/krainboltgreene/time-lord.png)](https://gemnasium.com/krainboltgreene/time-lord)
  - [![Coverage Status](https://coveralls.io/repos/krainboltgreene/time-lord/badge.png?branch=master)](https://coveralls.io/r/krainboltgreene/time-lord)

`time-lord` is a gem that gives you more human like expressions for time and space math.
Underneath the covers `time-lord` gives you single purpose objects for handling the more complex parts of Time & Space.
Specifically conversion, periods between two points, and scaling.


Examples
--------

In `time-lord` you have Period objects:

``` ruby
1.hour.ago.class #=> <TimeLord::Period @beginning=2013-03-03 23:44:59 -0800, @ending=2013-03-04 00:44:59 -0800>
```

Periods, if forced into strings or integers, represent the number of seconds between the two points

``` ruby
1.hour.ago.to_i #=> -3600
```

Obviously Periods act a lot like a Range and can be coerced into one:

``` ruby
1.hour.ago.to_range #=> 1362383339..1362386939
```

You may have noticed the negative integer from `Period#to_i`.
This represents the period beginning before the ending.
The reverse comes from using `Period#from_now`:

``` ruby
1.hour.from_now.to_i #=> 3600
```

Periods also have a special `Period#to_words` method:

``` ruby
1.hour.ago.to_words #=> "1 hour ago"
200.minutes.ago.to_words #=> "3 hour ago"
```

Of course you can also do fun Time math:

``` ruby
Time.now #=> 2013-03-04 00:55:49 -0800
Time.now - 2.hours #=> 2013-03-03 22:55:50 -0800
```

Time is fun.


Installing
----------

**Requirements**

1. A blue telephone box (optional)

Like any other gem you can install it via the `gem` command:

``` terminal
$ gem install time-lord
```

Although I suggest using `bundler`:

``` ruby
gem 'time-lord', '~> 1.0'
```


**Testing**

To make sure you did everything right, just do the following:

```
$ ruby -e "1.hour.ago.to_words"
> 1 hour ago
```


Issues & Documentation
----------------------

  * [Documentation](http://rubydoc.info/gems/time-lord)
  * [Issues](https://github.com/krainboltgreene/time-lord/issues)

Absolutely feel free to contribute, please!


Changelog
---------

**v0.1.5**

* Changed the name of the gem, added some tests

**1.0.0**

  * Initial release


Contributing
------------

  1. Fork it
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Push to the branch (`git push origin my-new-feature`)
  5. Create new Pull Request


Credits
-------

  * [Simon Hørup Eskildsen](https://github.com/Sirupsen) for the original work on time-ago-in-words gem
  * [Henrik Enggaard](https://github.com/henrikh) for very useful commits pre-1.0
  * [James Larkby-Lahet](https://github.com/wolfwood) for very useful commits pre-1.0
  * [Nick Merwin](https://github.com/nickmerwin) for unfucking the coveralls setup
  * [Christian Tietze](https://github.com/DivineDominion) for pointing out a mistake in the readme
  * [Blaž Hrastnik](https://github.com/archSeer) for noticing and contributing tests for a bug in the timing logic past a month


License
-------

Copyright (c) 2013 Kurtis Rainbolt-Greene

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
