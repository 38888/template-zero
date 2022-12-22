func (m *default{{.upperStartCamelObject}}Model) Insert(ctx context.Context, data *entity.{{.upperStartCamelObject}}) error {

	{{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}

    err := {{.lowerStartCamelObject}}.WithContext(ctx).Create(data)
    if err != nil {
    	return err
    }

   	return err

}
