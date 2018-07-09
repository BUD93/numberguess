Copy-Item -Path "C:\Program Files (x86)\Jenkins\workspace\test\target\my-app-1.0-SNAPSHOT.jar" -Destination "C:\Program Files\jboss\bin\deployments\my-app-1.0-SNAPSHOT.jar"
cd "C:\Program Files\jboss\bin"
./jboss-cli.ps1 --connect --controller=remote+http://127.0.0.1:9990 --user=admin --password=bursys@1234 --command="deploy /deployments/my-app-1.0-SNAPSHOT.jar"
