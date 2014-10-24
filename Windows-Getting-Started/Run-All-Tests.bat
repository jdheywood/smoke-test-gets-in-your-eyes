ECHO Running Quick-Start.rb
CD ..\
CALL ruby.exe -e $stdout.sync=true;$stderr.sync=true;load($0=ARGV.shift) ./quick-start.rb
ECHO Tests completed
PAUSE