
namespace go go_workflow



struct AddRequest {
    1: required string id
}

struct AddResponse {
    1: required string id
}



service go_workflow_service {
    AddResponse Add(1: AddRequest req)
}