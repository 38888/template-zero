Update(ctx context.Context, {{if .containsIndexCache}}newData{{else}}data{{end}} *entity.{{.upperStartCamelObject}}) error
Trans(ctx context.Context, fn func(context context.Context) error) error    //事务