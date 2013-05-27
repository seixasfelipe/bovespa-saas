Bovespa SaaS
============
[![Build Status](https://travis-ci.org/seixasfelipe/bovespa-saas.png?branch=master)](https://travis-ci.org/seixasfelipe/bovespa-saas)

SaaS (Sinatra app) to export all BM&F Bovespa daily stock quotations that were imported by bovespa-ingestion lib.

Introduction
------------

Installing
----------

Install bundler:

  `$ gem install bundler`

Enter the cloned dir and fetch dependencies:

  `$ bundler install`

Testing
-------

Simply:

  `$ rake`

Contributing
------------

## Submitting a Pull Request

1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Write a failing test to capture existing bug or lack of feature.
4. Run tests with `rake` to verify that test fails.
5. Implement your feature or bug fix.
6. Ensure tests pass.
7. If it's a new feature or a bug fix, please add an entry to the changelog file.
8. Add, commit, and push your changes.
9. [Submit a pull request.][pr]

[fork]: https://help.github.com/articles/fork-a-repo
[branch]: http://learn.github.com/p/branching.html
[pr]: https://help.github.com/articles/using-pull-requests

Prerequisites
-------------

Tested with Ruby 1.9.3.


Boring legal stuff
------------------

(the MIT license)

Copyright (c) 2013 Felipe Seixas <seixasfelipe@gmail.com> and contributors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.