# ODNPublish
Currently, SSL needs disabled to use this script.

With a running Origintrail V6 Beta 1 testnode, run: sudo git clone https://github.com/CosmiCloud/ODNPublish.git && cd ODNPublish && sudo npm install prompts && sudo npm install dkg-client@beta.1 && sudo npm install random-words && sudo node publish.js

'Advanced Publish' - Large datasets may slow down your node - Run: sudo git clone https://github.com/CosmiCloud/ODNPublish.git && cd ODNPublish && sudo npm install prompts && sudo npm install dkg-client@beta.1 && sudo npm install random-words && sudo npm install axios && sudo node publish_adv.js

-----STRESS TESTING----- <br>
Help stress test! Max out your node to see how it performs under pressure. These cronjobs will initiate a publish every 6 seconds. If you have less RAM you can reduce the frequency and bring the demand within your nodes limits.

At least 2cpu and 6gb RAM required. 
1 publish every 4-5 seconds means you will use .2858 test matic per hour. 
You can fill up easily if you run out here: https://faucet.polygon.technology/. Check out your node wallet to see your publishes onchain.

Run: crontab -e
<p>
Paste the following:<br><br>
* * * * * ( /usr/bin/node /root/ODNPublish/publish.js )<br>
* * * * * ( sleep 6 ; /usr/bin/node /root/ODNPublish/publish.js ) <br>
* * * * * ( sleep 12 ; /usr/bin/node /root/ODNPublish/publish.js )<br>
* * * * * ( sleep 18 ; /usr/bin/node /root/ODNPublish/publish.js )<br>
* * * * * ( sleep 24 ; /usr/bin/node /root/ODNPublish/publish.js )<br>
* * * * * ( sleep 30 ; /usr/bin/node /root/ODNPublish/publish.js )<br>
* * * * * ( sleep 36 ; /usr/bin/node /root/ODNPublish/publish.js )<br>
* * * * * ( sleep 42 ; /usr/bin/node /root/ODNPublish/publish.js )<br>
* * * * * ( sleep 48 ; /usr/bin/node /root/ODNPublish/publish.js )<br>
* * * * * ( sleep 54 ; /usr/bin/node /root/ODNPublish/publish.js )<br>
</p>

