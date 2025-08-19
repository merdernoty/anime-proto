PROTOC_GEN_GO = $(shell go env GOPATH)/bin/protoc-gen-go
PROTOC_GEN_GO_GRPC = $(shell go env GOPATH)/bin/protoc-gen-go-grpc

generate:
	protoc --go_out=. --go-grpc_out=. \
	    --go_opt=paths=source_relative \
	    --go-grpc_opt=paths=source_relative \
	    user/user.proto

	protoc --go_out=. --go-grpc_out=. \
	    --go_opt=paths=source_relative \
	    --go-grpc_opt=paths=source_relative \
	    auth/auth.proto

	protoc --go_out=. --go-grpc_out=. \
	    --go_opt=paths=source_relative \
	    --go-grpc_opt=paths=source_relative \
	    anime/anime-search.proto