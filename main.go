package main

import (
	"arango/service"
	"arango/storages"
	"context"
	"net"

	driver "github.com/arangodb/go-driver"
	"github.com/arangodb/go-driver/http"
	"github.com/sirupsen/logrus"
	"google.golang.org/grpc"
)

var grpcAddress = ":50050"

func main() {
	err := Run()
	if err != nil {
		logrus.Fatal(err)
	}
}
func Run() error {
	ctx := context.Background()
	conn, err := http.NewConnection(http.ConnectionConfig{
		Endpoints: []string{"http://localhost:8529"},
	})
	if err != nil {
		return err
	}
	client, err := driver.NewClient(driver.ClientConfig{
		Connection: conn,
	})
	if err != nil {
		return err
	}
	grpcServer := grpc.NewServer()
	lis, err := net.Listen("tcp", grpcAddress)
	if err != nil {
		return err
	}
	userStorage, err := storages.NewUserArango(ctx, client)
	if err != nil {
		return err
	}
	fileStorage, err := storages.NewFileArango(ctx, client)
	if err != nil {
		return err
	}
	authS := service.NewAuthService(userStorage)
	_, err = service.NewUserService(grpcServer, authS, userStorage)
	if err != nil {
		return err
	}
	_, err = service.NewFileService(grpcServer, authS, fileStorage)
	if err != nil {
		return err
	}
	return grpcServer.Serve(lis)
}
