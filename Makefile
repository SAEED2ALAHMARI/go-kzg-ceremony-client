lint:
	go run github.com/golangci/golangci-lint/cmd/golangci-lint@v1.50.1 run
.PHONY: lint

test:
	go test ./... -race
.PHONY: test

build:
	go build ./cmd/kzgcli
.PHONY: build

bench:
	go test ./... -run=none -bench=.
.PHONY: bench