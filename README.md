# ODNPublish
Currently, SSL needs disabled to use this script.

Running Origintrail V6 Beta 1 testnode required.

-----PUBLISH----- <br>
Run: sudo git clone https://github.com/CosmiCloud/ODNPublish.git && cd ODNPublish && sudo npm install prompts && sudo npm install dkg-client@beta.1 && sudo node publish.js && ./run_publish.sh

-----STRESS TESTING----- <br>
Help stress test! Max out your node to see how it performs under pressure. The cronjobs will initiate a publish every 6 seconds. If you have less RAM you can reduce the frequency and bring the demand within your nodes limits. The dbwipe script will start a new db every 2 hours to make sure your node can keep publishing. Feel free to comment it out if you want to hold onto test data.

At least 2cpu and 6gb RAM required. 
You can fill up easily if you run out here: https://faucet.polygon.technology/. Check out your node wallet to see your publishes onchain.


Instead of running the loop in ./run_publish, you can also set up cronjobs. This should only be used with static datasets that are small and do not change in size. Run: crontab -e
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
0 */2 * * * /root/ODNPublish/dbwipe.sh
</p>

