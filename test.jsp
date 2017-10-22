<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery UI 对话框（Dialog） - 默认功能</title>
    <link rel="stylesheet" href="/css/jquery-ui.min.css">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $( "#dialog" ).dialog();
        });
    </script>
</head>
<body>

<div id="dialog" title="基本的对话框">
    <p>这是一个默认的对话框，用于显示信息。对话框窗口可以移动，调整尺寸，默认可通过 'x' 图标关闭。</p>
</div>


</body>
</html>