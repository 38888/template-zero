func (m *default{{.upperStartCamelObject}}Model) Delete(ctx context.Context, {{.lowerStartCamelPrimaryKey}} {{.dataType}}) error {

	qb := m.conn.{{.upperStartCamelObject}}

	if _, err := qb.WithContext(ctx).Where(qb.{{.upperStartCamelPrimaryKey}}.Eq({{.lowerStartCamelPrimaryKey}})).Delete(); err != nil {
		return err
	}
	return nil

}
