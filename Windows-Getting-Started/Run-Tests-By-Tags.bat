ECHO Please enter the @tags you'd like to run (e.g @regression,@live) followed by enter
CALL set /p tagsToRun=.
CALL bundler exec cucumber ../Features --tags "%tagsToRun%" --format Cucumber::Formatter::Html --out .\test-results\results.html
CALL "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" .\test-results\results.html
