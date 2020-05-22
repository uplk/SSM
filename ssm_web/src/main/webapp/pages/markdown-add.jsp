<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2020/5/10
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- markdown -->
    <link rel="stylesheet" href="../css/style.css" />
    <link rel="stylesheet" href="../css/editormd.css" />
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />
</head>
<body>
    <div  id="my-editormd" >
<%--        <textarea style="display: none;" name="major_content" id="major_content"></textarea>--%>
        <textarea id="my-editormd-markdown-doc" name="test-editormd-markdown-doc" style="display:none;"></textarea>
        <textarea id="major_content" name="major_content" style="display:none;"></textarea>
    </div>
    <div>
        <input type="button" value="提交" onclick="returnValueToFather();"/>
    </div>
    <!-- Markdown -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/editormd.min.js"></script>
    <script type="text/javascript">


        <!-- 显示markdown -->
        var testEditor;

        $(function() {
            testEditor = editormd("my-editormd",{
                width   : "90%",
                height  : 440,
                syncScrolling : "single",
                path    : "${pageContext.request.contextPath}/lib/",
                saveHTMLToTextarea: true

            });
        });

        function returnValueToFather(){
            var valueToFatther = document.getElementById("my-editormd-markdown-doc").value;
            window.opener.document.getElementById("test").value = valueToFatther;
            window.close();
        }

    </script>
</body>
</html>
