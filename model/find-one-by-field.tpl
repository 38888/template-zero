func (m *default{{.upperStartCamelObject}}Model) FindOneBy{{.upperField}}(ctx context.Context, {{.in}}) (*entity.{{.upperStartCamelObject}}, error) {

    qb := m.conn.{{.upperStartCamelObject}}
    resp, err := qb.WithContext(ctx).Where(qb.{{.upperField}}.Eq({{.lowerStartCamelField}})).Take()
    if err != nil {
    	return nil, err
    }
    return resp, nil


}
