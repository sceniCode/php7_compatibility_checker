# php7_compatibility_checker
PHP 7 Compatibility Checker - A basic checker to check for php functions that have been removed in PHP 7

If this script shows no files that contain these functions it does NOT mean that your PHP 5 code is compatible with PHP 7. I wrote this purely to see quickly what, at a minimum, I needed to change before I could even think about upgrading to PHP7

Please see http://scenicode.com/blog/php7-compatibility-bash-script for details

Use the information from the script at your own risk. :)

# How to use

Download the php7_compatibility_checker.sh file. 

    wget https://raw.githubusercontent.com/sceniCode/php7_compatibility_checker/master/php7_compatibility_checker.sh

Then run:

    chmod 555 ./php7_compatibility_checker.sh

Then run it, with the location of where to search as the last argument, for example:

    ./php7_compatibility_checker.sh /htdocs/

or 

    ./php7_compatibility_checker.sh .


# Please send pull requests :) 
This was written quickly as a something to quickly check how many php files I had that contained functions that are removed in PHP7.

