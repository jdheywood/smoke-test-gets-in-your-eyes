Welcome Stranger!

This is my first attempt at a simple website UI smoke test automation framework, using Ruby, Watir and Cucumber, good luck!

### How do I get set up? Windows edition ###
* Clone this repository
* Ensure that Chocolatey is installed on your system : https://chocolatey.org/
* Run \Windows-Getting-Started\runme-first-Windows.bat from your local machine as admin (Right click on file > Run as Administrator)
* Running the above batch file will ensure the correct version of Ruby is installed, and their necessary dependencies are also installed (including Firefox if not installed)
* Should the batch file above be successful, try running 'Run-All-Tests' from the same directory.

### How do I get set up? ###

* Clone this repository
* Checkout the dev branch
* Create your own feature branch from this
* Install Ruby 1.9.3; If on Windows use the installer, it's easier: http://rubyinstaller.org/downloads/ if on Linux or Mac have at it. If you have multiple versions of Ruby then you are a mad man, but this may help on Windows; https://github.com/vertiginous/pik or for Linux and Mac; http://rvm.io/
* Install Bundler; $ gem install bundler
* Navigate to the root of your cloned repo
* Use bundler to install the projects dependencies; $ bundle install
* Install the Selenium IEDriverServer from here; http://selenium-release.storage.googleapis.com/index.html - add to a location on your hard drive that is listed in your PATH environment variable, Ruby<version>/bin is as good a place as any
* Install FireFox on your machine, if you do not yet have it installed
* Install the Selenium chrome driver from here; http://chromedriver.storage.googleapis.com/index.html - add to a location on your hard drive that is listed in your PATH environment variable, Ruby<version>/bin is as good a place as any
* Download and install Phantom.js; http://phantomjs.org/download.html place the executable somewhere on your PATH, again the Ruby bin folder is a good option
* Open up an Interactive Ruby Shell window, either from your Start Menu, or from a Command Window type irb
* Run one of the example ruby scripts; 
* * ruby quick-start.rb
* * ruby driver.rb
* * ruby element.rb
* * ruby watir-webdriver.rb
* * ruby browserstack-demo.rb
* TO DO....
* TO DO....
* TO DO....


### Contribution guidelines ###

* TO DO....
* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###

* Repo owner or admin: jdheywood@gmail.com
* Many thanks to Tony Das for his contributions :-)