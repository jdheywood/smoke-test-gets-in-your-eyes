ECHO Trying to install Ruby 1.9.3 (via Chocolatey)
CALL choco install ruby -Version 1.9.3.54500
ECHO Installed Ruby 1.9.3

ECHO Trying to install the Bundler Gem (Ruby)
CALL gem install bundler
ECHO Installed bundler Gem

ECHO Switching to root directory
CD ..\

ECHO Downloading and Installing Dependencies (via Bundler)
CALL bundle install
ECHO Bundler Dependencies installed.

ECHO Installing Firefox latest (if not already installed - install script checks)
CALL choco install Firefox
ECHO Firefox latest installed

ECHO Install script complete!
PAUSE