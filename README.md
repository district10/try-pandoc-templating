Pandoc Template Hacks
=====================

笔记：

-   普通键值对：`key: value`

    列表：

    ```
    key:
    -   value1
    -   value2
    ```

    嵌套：

    ```
    parent:
        son:
        -   tom
        -   jack
        daughter:
        -   jersy
        -   sheay
    ```

-   `$sep$` 是一个特殊的变量，后面定义 sep 的值，比如

    ```
    $for(items)$$items$$sep$, $endfor$
    ```

    就会用 ", " 来 join 这些 items。

-   输入的文本，后缀不重要（可能跟用了自己的 template 有关），比如：

    ```bash
    pandoc --template template.html \
        part1.yml part2.yml part3.md \
        -f markdown input.md -o output.html
    ```

    这个 yml 和 md 就没有区别。

    里面都要弄成

    ```
    ---
    option: value
    ---

    ```

    才能对页面进行配置。这里 part3.yml 就被当成了一个普通 Markdown 文件。

-   但实际上，`.yml` 和 `.md` 中配置方法虽然一样，但是 `.yml` 文件的等级更高。
    等级影响值得覆盖，有两个原则：

    -   yml 高于 md
    -   先出现的高于后出现的

-   脚本注入：

    ```yml
    jscode:
        <script>
        document.write("A JavaScript code.");
        </script>
    ```

    ```
    $if(jscode)$
    $jscode$
    $endif$
    ```

    会引起导出的 json 出 bug。

    Anyway，不要在 yml 中写 html 标签。

把目录下的几个文件看看，大概就知道怎么配置了。
