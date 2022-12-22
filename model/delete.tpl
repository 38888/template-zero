func (m *default{{.upperStartCamelObject}}Model) Delete(ctx context.Context, {{.lowerStartCamelPrimaryKey}} {{.dataType}}) error {

	{{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}

	if _, err := {{.lowerStartCamelObject}}.WithContext(ctx).Where({{.lowerStartCamelObject}}.{{.UpperStartCamelPrimaryKey}}.Eq({{.lowerStartCamelPrimaryKey}})).Delete(); err != nil {
		return err
	}
	return nil

}
