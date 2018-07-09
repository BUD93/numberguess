Copy-Item -Path "C:\Program Files (x86)\Jenkins\workspace\numberguess\target\jboss-numberguess.war" -Destination "C:\Program Files\jboss\bin\deployments\jboss-numberguess.war"
cd "C:\Program Files\jboss\bin"
./jboss-cli.ps1 --connect --controller=remote+http://127.0.0.1:9990 --user=admin --password=bursys@1234 --command="deploy /deployments/jboss-numberguess.war"
