# smartCar

SmartCar collects from an senec Batterie all infos and if you had enough Energy Overflow it turns an TP-Link(https://www.amazon.de/TP-Link-Steckdose-funktionieren-erforderlich-Steuern/dp/B06W586CDZ/ref=mp_s_a_1_3?dchild=1&keywords=steckdose+tp+link+hs110&qid=1625588004&sprefix=steckdose+tp&sr=8-3) Power Switch on. It is written in Ruby and based on the ruby senec collector library (https://github.com/solectrus/senec) and on the hs1xx ruby library (https://github.com/adamcooke/hs1xx).

If you use the Dockerimage on the Dockerhub (https://hub.docker.com/repository/docker/lucpfi/smartcar/general) you must setup 4 envoirment Variables.

````
senec_host=<ip of the senec batterie>
plug=<ip of the tp link plug>
min_power_overflow=<power overflow before the plug turns on>
interval=<collecting interval in s>
````

### Example

````
senec_host=192.168.178.186
plug=192.168.178.194
min_power_overflow=2600
interval=60
````
