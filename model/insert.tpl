func (m *default{{.upperStartCamelObject}}Model) Insert(ctx context.Context, data *entity.{{.upperStartCamelObject}}) error {

	qb := m.conn.{{.upperStartCamelObject}}

    err := qb.WithContext(ctx).Create(data)
    if err != nil {
    	return err
    }

   	return err

}
