func (m *default{{.upperStartCamelObject}}Model) Update(ctx context.Context, newData *entity.{{.upperStartCamelObject}}) error {


	{{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}
	resultInfo, err := {{.lowerStartCamelObject}}.WithContext(ctx).Where({{.lowerStartCamelObject}}.{{.UpperStartCamelPrimaryKey}}.Eq(newData.{{.UpperStartCamelPrimaryKey}})).Updates(newData)

	if err != nil {
		return err
	}
	if resultInfo.RowsAffected < 1 {
		return NotAffectedErr
	}

	return err


}
func (m *default{{.upperStartCamelObject}}Model)  Trans(ctx context.Context, fn func(context context.Context) error) error {
	return m.conn.Transaction(func(tx *dao.Query) error {
		return fn(ctx)
	})
}