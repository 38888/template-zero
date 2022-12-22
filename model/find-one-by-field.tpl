func (m *default{{.upperStartCamelObject}}Model) FindOneBy{{.upperField}}(ctx context.Context, {{.in}}) (*{{.upperStartCamelObject}}, error) {

    {{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}
    resp, err := {{.lowerStartCamelObject}}.WithContext(ctx).Where({{.lowerStartCamelObject}}.{{.upperField}}.Eq({{.lowerStartCamelField}})).Take()
    if err != nil {
    	return nil, err
    }
    return resp, nil


}
