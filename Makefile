# export PATH="$PATH:$HOME/.pub-cache/bin"
all:
	rm -r api
	rm -r docs
	rm -r arango_client/lib/generated 
	mkdir api
	mkdir docs
	mkdir arango_client/lib/generated 
	protoc --proto_path=proto proto/*.proto \
		--grpc-gateway_out=logtostderr=true:api  \
		--openapiv2_out=logtostderr=true:./docs \
		--go_out=:api --experimental_allow_proto3_optional \
		--go-grpc_out=:api \
		--dart_out=grpc:arango_client/lib/generated 