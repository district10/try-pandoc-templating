Pandoc Template Hacks
=====================

1. the first one matters.


`$sep$` 是一个特殊的变量，后面定义 sep 的值，比如

```
$for(items)$$items$$sep$, $endfor$
```

就会用 ", " 来 join 这些 items。
