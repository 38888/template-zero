func (m *default{{.upperStartCamelObject}}Model) FindOne(ctx context.Context, {{.lowerStartCamelPrimaryKey}} {{.dataType}}) (*entity.{{.upperStartCamelObject}}, error) {

	{{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}
    resp, err := {{.lowerStartCamelObject}}.WithContext(ctx).Where({{.lowerStartCamelObject}}.{{.upperStartCamelPrimaryKey}}.Eq({{.lowerStartCamelPrimaryKey}})).Take()
	if err != nil {
		return nil, err
	}
	return resp, nil

}
