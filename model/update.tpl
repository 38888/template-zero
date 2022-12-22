func (m *default{{.upperStartCamelObject}}Model) Update(ctx context.Context, newData *entity.{{.upperStartCamelObject}}) error {


	qb := m.conn.{{.upperStartCamelObject}}
	resultInfo, err := qb.WithContext(ctx).Where(qb.{{.upperStartCamelPrimaryKey}}.Eq(newData.{{.upperStartCamelPrimaryKey}})).Updates(newData)

	if err != nil {
		return err
	}
	if resultInfo.RowsAffected < 1 {
		return NotAffectedErr
	}

	return err


}
