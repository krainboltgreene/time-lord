time-lord
=========

**Current Version**: 1.0.0

`time-lord` is a gem that builds on the Time class to give more human expressions.
It adds a lot of nifty little ideas present in Rails helpers to the time class.
Nothing too fancy, just a little human touch to data.


Examples
--------

To use `time-lord` you need a Time, Date, or DateTime object.
You can pass an object that doesn't act like those, but you'll have to tell it to try and parse.
Even then it might not be able to, so be careful and just send Time-likes.
Here's an example or two:

``` ruby
Time.now.ago_in_words
  # => "just now"

olden_times = Time.parse("1942-04-01")

"I was dancing with Queen Elizabeth #{olden_times.ago_in_words} from now!"

# => "I was dancing with Queen Elizabeth 7 decades ago from now!"
```

There's a lot more to come hopefully.
Time is fun.


Installing
----------

**Requirements**

1. Any Ruby with a Time class
2. Any Gem manager
3. A blue telephone box

Like any other gem you can install it via the `gem` command:

``` terminal
$ gem install time-lord
```

Although I suggest using `bundler`:

``` ruby
gem 'time-lord', '0.1.5'
```


**Testing**

To make sure you did everything right, just do the following:

```
$ ruby -e "puts Time.now.ago_in_words"
> just now
```


Issues & Documentation
----------------------

* [Documentation](https://github.com/krainboltgreene/time-lord/wiki)
* [Issues](https://github.com/krainboltgreene/time-lord/issues)

Absolutely feel free to contribute, please!


Changelog
---------

**v0.1.5**

* Changed the name of the gem, added some tests

**v0.1.0**

* I didn't track changelogs when this version was released


Contributing
------------

* **Fork** the repository
* **Clone the repository** locally, or **edit via Github**
* Create a **new branch** using the [Git Flow Standard](http://yakiloo.com/getting-started-git-flow/) conventions
* Commit **often** and **when important**
* **DO NOT CHANGE** ANY OF THESE (without making a new branch for *that* change):
  * `*.gemspec`
  * `Rakefile`
  * `.rvmrc`
  * `.gitignore`
  * Any part of the git history
* **Write tests** specifically for the changes you've made, if no test exist
* **Push** your feature or hotfix branch to Github.
* Make a **Pull Request**


Credits
-------

* [Simon Hørup Eskildsen](https://github.com/Sirupsen)
* [Henrik Enggaard](mailto: https://github.com/henrikh)
* [James Larkby-Lahet](https://github.com/wolfwood)


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
