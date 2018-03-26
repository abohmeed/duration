# Duration.rb
A Ruby script used to calculate the total fees of freelancers who create videos. The script relies on the FFMPEG to be installed.
I have tested it on macOS but it should work on Linux machines as well.
## Usage:
./duration.rb /path/to/mp4/files

You can change the hourly rate by changing the rate variable inside the script.
For example, if you are paid $70/hour then the variable should read: rate = 70 /60 /60
