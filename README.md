Just a plain and simple bash script whit namp  amied to make life easier for who do CTF or Boxes ecc and split the porcess in two phases 

1) Tcp scan only
2) NSE modules scans whit port found

when the  box or test target has  few  open ports there are no problem but when there a bit more of open ports hanging , specially in AD targets , the whole thing get a little annoing 

Since the "2 phase" it far more precise and accurate , i chose to build this one run script to do both , insted to do each time silly onliners ... run this add your target IP end. 

------

for the TCP scan i used a simple `-p-` and `--min-rate` set to 10000 which at least on my machine will be more fast the `-T4` and stay accurate 
( Out of 10 htb box 8/9 scan results are precise whiteout miss a port but some time very very rare time it can happen that miss some ports , so im may ill add `--max-rtt-timeout` which around 20000ms it solve the issuse while stay fast ) 

insteas for the NSE scans i used the more classic method  `-sC`  `-sV` 


NOTE : This script is not intended for use in real scenarions or whatsoever , its made only for the puporse to make nmap scan faster for HTB , VULNHUB , THM ecc ...  

(: 0x42
