ECHO Running All Cucumber Tests
CALL cucumber ../Features --format Cucumber::Formatter::Html --out .\test-results\results.html
ECHO Tests completed
PAUSE