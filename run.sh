mvn -q dependency:copy -Dartifact=$M2_COORDINATE:pom -DoutputDirectory=.
mvn -q dependency:copy -Dartifact=$M2_COORDINATE -DoutputDirectory=.
mvn -q dependency:get -Dartifact=$M2_COORDINATE -DoutputDirectory=.
mv *.pom pom.xml
mvn -q dependency:build-classpath -Dartifact=$M2_COORDINATE -Dmdep.outputFile=cp.txt
java -cp $(ls *.jar):$(cat cp.txt) $MAIN_CLASS
