package main

import (
	"fmt"
	"net/http"
	"server/user"

	"github.com/golang/protobuf/proto"
)

func userHandler(w http.ResponseWriter, r *http.Request) {
	gong := &user.User{
		Id:     100,
		Name:   "gong",
		Mobile: "183-5678-9876",
	}
	data, err := proto.Marshal(gong)
	if err != nil {
		w.Write([]byte(err.Error()))
	} else {
		w.Write(data)
	}
}

func userListHandler(w http.ResponseWriter, r *http.Request) {
	list := new(user.UserList)
	for i := int32(1); i < 100; i++ {
		gong := &user.User{
			Id:     i,
			Name:   fmt.Sprintf("gong %d", i),
			Mobile: fmt.Sprintf("132-7663-998%d", i),
		}
		list.Users = append(list.Users, gong)
	}
	list.HasMore = true
	list.Info = "a list of users"

	data, err := proto.Marshal(list)
	if err != nil {
		w.Write([]byte(err.Error()))
	} else {
		w.Write(data)
	}
}

func main() {
	http.HandleFunc("/users", userListHandler)
	http.HandleFunc("/user", userHandler)

	http.ListenAndServe(":8080", nil)
}
