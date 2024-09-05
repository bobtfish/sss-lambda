bootstrap:
	env GOOS=linux GOARCH=arm64 CGO_ENABLED=0 go build -tags lambda.norpc -ldflags="-s -w" -o bootstrap lambda.go

deploy: bootstrap
	serverless deploy
