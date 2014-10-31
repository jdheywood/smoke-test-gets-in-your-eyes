ECHO Running All Cucumber Tests in Parallel (4 browsers)
CALL bundler exec parallel_cucumber ../Features -n 4
CALL "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" .\test-results\results.html


