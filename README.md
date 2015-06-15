Acryr
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is open source and supported by subscribers. Please join RailsApps to support development of Rails Composer.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.2
- Rails 4.2.1

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).
Project status
---------------
 - Dev : Iteration 0
 - Prod  : Iteration 0

Features to do
---------------
 - Iteration 0
    - Carrierwave support
 - Iteration 1
    - At administrator level :
        - See all claims in Claims/Index
        - Can delete all claims
        - Can edit only his claims
    - Create link model users to claims to ensure many to many relationships for contributors
    - Add ability to user to join himself to claim(s)

Changelog
---------------
 - Iteration 0
    - User login
    - User register
    - User roles
    - Userspace
    - Has zero to many issues
    - Integrate claims with users
    - Scaffold claims (CRUD)
        - Has one user
        - Has one description
        - Has one title
        - Has one client picture evidence
        - Has one or many issue picture evidence
        - Fix bug, user not displaying correctly in claims display
        - Claims tab show only current logged user claims unless he's admin


Documentation and Support
-------------------------
 - Specs : https://github.com/ranska/infres_2015

Issues
-------------

Contributers
------------
 - https://github.com/yojolo
 - https://github.com/Uwy
 - https://github.com/Nakou
 - https://github.com/CharlesCoque
 - https://github.com/HotBlackHole

Credits
-------
https://github.com/RailsApps/rails_apps_composer
// The usual (rails, ruby etc)

License
-------
The MIT License (MIT)

Copyright (c) 2015 yojolo, Uwy, Nakou, CharlesCoque, HotBlackHole

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
