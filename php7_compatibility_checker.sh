#!/usr/bin/env bash
echo "############################################"
echo "# This is not a definitive list, and it won't catch 100% of removed functions."
echo "# Please go to https://wiki.php.net/rfc/remove_deprecated_functionality_in_php7 for more details (especially the 'miscellaneous functionality' and ini option sections)"
echo "# Go to https://scenicode.com/blog for more"
echo "############################################"

# Only include mysql_connect, as to use any of the related functions like mysql_num_rows there needs to be a connection. 

needles=("ereg" "mysql_connect" "set_magic_quotes_runtime" "magic_quotes_runtime" "set_socket_blocking" "mcrypt_generic_end" "mcrypt_ecb" "mcrypt_cbc" "mcrypt_cfb" "mcrypt_ofb" "datefmt_set_timezone_id" "setTimeZoneID" )


#Generate a pattern of all the previous needles
pattern=$(echo ${needles[@]}|tr " " "|")

# Recursive, case insensitive (built in php functions are not case sensitive, silent errors, php files only, extended-regexp (-E), print only the matching part of the line (-o), word-regexp (-w)
grep -ris  --include="*.php" -Eow "$pattern" $1


