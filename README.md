# docker-sonar-scanner

### Basic usage

Run sonar scanner: 

	docker run --rm -v $(pwd):/data -w /data techdivision/docker-sonar-scanner:latest sonar-scanner -Dsonar.analysis.mode=preview

Run sonar scanner with debug: 

	docker run --rm -v $(pwd):/data -w /data techdivision/docker-sonar-scanner:latest sonar-scanner-debug -Dsonar.analysis.mode=preview

Run sonar runner (deprecated): 

	docker run --rm -v $(pwd):/data -w /data techdivision/docker-sonar-scanner:latest sonar-runner -Dsonar.analysis.mode=preview

For more please visit [http://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner](http://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner "http://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner")
