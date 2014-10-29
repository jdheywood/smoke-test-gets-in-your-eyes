ECHO Running All Cucumber Tests
CALL cucumber ../Features --format Cucumber::Formatter::Html --out .\test-results\results.html
CALL "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" .\test-results\results.html
