package main

import (
	//"crypto/tls"
	"fmt"
	"log"

	"golang.org/x/net/context"
	"google.golang.org/grpc"
	//"google.golang.org/grpc/credentials"

	new "github.com/sbadakhc/grpcbin"
)

func main() {
	// dial
	conn, _ := grpc.Dial("35.189.109.52:9000", grpc.WithInsecure())
	//conn, _ := grpc.Dial("grpcb.in:9001", grpc.WithTransportCredentials(credentials.NewTLS(&tls.Config{ServerName: "", InsecureSkipVerify: true})))
	defer conn.Close()

	// create client and context
	client := new.NewGRPCBinClient(conn)
	ctx := context.Background()

	// call DummyUnary
	res, err := client.DummyUnary(ctx, &new.DummyMessage{
		FString: "Connection Successful",
	})
	if err != nil {
		log.Fatalf("failed to call DummyUnary: %v", err)
	}
	fmt.Println(res)
}
