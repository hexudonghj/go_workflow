package main

import (
	"github.com/hexudonghj/go_workflow/middleware/db"
	"gorm.io/gen"
)

func main() {
	db.InitDb()
	g := gen.NewGenerator(gen.Config{
		OutPath:      "model/dao",
		ModelPkgPath: "model/entity",
		//Mode:         gen.WithoutContext | gen.WithDefaultQuery | gen.WithQueryInterface, // generate mode
	})

	g.UseDB(db.DB) // reuse your gorm db

	// Generate basic type-safe DAO API for struct `model.User` following conventions
	ActHiProcinst := g.GenerateModelAs("act_hi_procinst", "ActHiProcinst")
	g.ApplyBasic(ActHiProcinst)

	// Generate the code
	g.Execute()
}
