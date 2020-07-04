#! /bin/bash
version=3.0.1
git pull
for folder in complete  documented  initial  instrumented  instrumenting
do
    cd $folder
    ./gradlew wrapper --gradle-version 6.5.1
    ./gradlew test
    mvn test
    cd ..
done;
git add .
git commit -m "Updated Concordion version to $version"
git push origin master