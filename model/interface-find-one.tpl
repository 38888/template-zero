FindOne(ctx context.Context, {{.lowerStartCamelPrimaryKey}} {{.dataType}}) (*entity.{{.upperStartCamelObject}}, error)
FindOneByQuery(ctx context.Context, data *entity.{{.upperStartCamelObject}}) (*entity.{{.upperStartCamelObject}}, error)
FindCount(ctx context.Context, data *entity.{{.upperStartCamelObject}}) (int64, error)
FindAll(ctx context.Context, data *entity.{{.upperStartCamelObject}}, orderBy string, isDesc bool) ([]*entity.{{.upperStartCamelObject}}, error)
FindPageListByPage(ctx context.Context,data *entity.{{.upperStartCamelObject}}, page, pageSize int64, orderBy string, isDesc bool) ([]*entity.{{.upperStartCamelObject}}, error)