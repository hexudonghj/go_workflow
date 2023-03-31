package main

import (
	"github.com/hexudonghj/go_workflow/kitex_gen/go_workflow/goworkflowservice"
	"log"
)

func main() {
	srv := goworkflowservice.NewServer(new(GoWorkflowServiceImpl))
	err := srv.Run()
	if err != nil {
		log.Println(err)
	}
}
