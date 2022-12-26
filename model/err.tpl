package {{.pkg}}

import (
	"github.com/pkg/errors"
	"gorm.io/gorm"
)

var ErrNotFound = gorm.ErrRecordNotFound
var NotAffectedErr = errors.New("未成功更新数据")
var NotContainsOrderColStrErr = errors.New("User doesn't contains orderColStr")
