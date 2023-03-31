package main

import (
	"context"
	go_workflow "github.com/hexudonghj/go_workflow/kitex_gen/go_workflow"
)

// GoWorkflowServiceImpl implements the last service interface defined in the IDL.
type GoWorkflowServiceImpl struct{}

// Add implements the GoWorkflowServiceImpl interface.
func (s *GoWorkflowServiceImpl) Add(ctx context.Context, req *go_workflow.AddRequest) (resp *go_workflow.AddResponse, err error) {
	return
}
