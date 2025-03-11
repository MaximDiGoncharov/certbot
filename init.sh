#!/usr/bin/expect -f


exp_internal 1
# set timeout 1
# spawn ./emulate_certbot.sh
spawn ./test.sh
set certbotID $spawn_id

expect -re "(.*)Continue" 

set myout $expect_out(buffer)
# echo $myout>>first_out.txt
exec ./last_save.sh $myout 
send -- "\r"



expect -re "(.*)Continue" 
set myout2 $expect_out(buffer)
# echo $myout>>second_out.txt 
exec ./last_save.sh $myout2 
send -- "\r"



expect -i $spawn_id eof

# необходимо перезапустить nginx
sleep 5
