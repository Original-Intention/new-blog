<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<%
    String root=request.getContextPath();
    System.out.println(root);
%>
<head>
    <meta content=”text/html;charset=utf-8″>
    <title>Zou's Blog</title>
    <link rel="shortcut icon" type="image/x-icon" href="/static/images/web-icon.png" media="screen" />
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <script src="/static/js/jquery-3.2.1.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <style>

        *{
            padding: 0;
            margin: 0;
        }
        #bg:after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,.4);
            z-index: 1;
        }/*给背景图片设置蒙版*/
        body {
            font: 14px/1.5 微软雅黑, arial, sans-serif;
            width: 100%;
            overflow: scroll;
        }
        #header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 66px;
            color: #fff;
            z-index: 9999;
            transition: all .3s;
        }/*设置页眉*/
        #header nav {
            position: relative;
            width: 80%;
            margin: 0 auto;
        }
        ul {
            list-style: none;
        }/*去掉列表样式*/
        #header nav li {
            border: 0;
            display: inline-block;
            height: 66px;
            line-height: 66px;
            font-size: 20px;
            position: relative;
            cursor: pointer;
        }
        #header nav li a {
            display: inline-block;
            padding: 0 15px;
            white-space: nowrap;
            color: #fff;
        }
        a {
            text-decoration: none;
        }/*去掉链接下划线*/
        #bg {
            position: relative;
            background: url("/static/images/296494-106.jpg");
        }/*设置背景图片*/
        #bg p {
            position: relative;
            padding: 95px 0 70px;
            color: hsla(0,0%,100%,.9);
            text-align: center;
            font-size: 26px;
            line-height: 2;
            z-index: 2;
            letter-spacing: 2.5px;
            text-shadow: 0 3px 25px rgba(0,0,0,.3);
            cursor: progress;
            padding-top: 100px;
            padding-right: 0px;
            padding-bottom: 100px;
            padding-left: 0px;
        }/*设置文字属性*/
        #bg p i {
            text-decoration: line-through;
            font-size: 20px;
            color: hsla(0,0%,100%,.8);
            text-shadow: 0 0 0 transparent;
            font-style: normal;
        }/*设置第二行文字属性*/
        #header nav figure
        {
            background:url("");
            height: 50px;
            width: 50px;
            background-size:cover ;

        }
        #header nav .my-info {
            position: absolute;
            top: 8px;
            right: 0;
        }
        figure {
            display: block;
            -webkit-margin-before: 1em;
            -webkit-margin-after: 1em;
            -webkit-margin-start: 40px;
            -webkit-margin-end: 40px;
            border-radius:100px;
        }

        #header nav span {
            font-size: 18px;
            margin: 0 10px;
        }
        #header nav figure, #header nav span {
            display: inline-block;

            vertical-align: middle;
        }

        #copyright {
            position: absolute;
            top: 0;
            left: 0;
            background: #999;
            width: 100%;
            height: 100%;
            transform-origin: 100% 0;
            transition: all .5s;
            z-index: 2;
        }
        #copyright p {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            line-height: 2;
        }
        #footer {
            position: relative;
            height: 120px;
            color: hsla(0,0%,100%,.69);
            font-size: 12px;
            text-align: center;
            transition: height .1s 1s;
        }
        #hiddenewm p{
            color: #444;
        }
        #hiddenewm
        {
            background: #fff;
            text-align: center;
            position: absolute;
            left: 25px;
            top: 70px;
        }
        #container {
            position: relative;
            max-width: 95%;
            margin: 0 auto;
        }
        .article {
            box-shadow: 5px 5px 25px #dadada;
            position: relative;
            padding: 0 20px;
            margin: 40px auto;
            max-width: 950px;
            background: #fff;
            text-align: center;
        }
        .article>time {
            position: absolute;
            top: 0;
            left: 0;
            border-bottom: 1px solid #ccc;
            font-size: 14px;
            padding: 4px 5px 0;
            color: #999;
        }
        .article h2 {
            padding-bottom: .5em;
            font-size: 1.75em;
            line-height: 1.225;
        }
        .article>h2 {
            padding: 35px 0 45px;
            font-size: 22px;
            font-weight: 700;
            cursor: pointer;
        }
        #container a {
            color: #333;
        }
        .article>span {
            position: absolute;
            top: 0;
            right: 0;
            color: #999;
            padding: 3px 10px;
            background: #f1f1f1;
            font-size: 14px;
        }
        .article section {
            text-align: left;
            padding: 10px;
            font-size: 16px;
        }
        .article blockquote {
            padding: 0 15px;
            color: #777;
            border-left: 4px solid #ddd;
        }
        .article footer {
            padding: 25px 0 20px;
        }
        .article footer a {
            display: inline-block;
            color: #18bc9c;
            cursor: pointer;
            padding: 4px 20px;
            border-radius: 5px;
            transition: all .5s;
            border: 1px solid #18bc9c;
        }
        #pagebar{
            text-align: center;
        }
        .comment{
        width:60%;
        position:relative;
        left:20%;
        border:1px ;
        text-align:center;
        margin:9px;
        background-color:#fff;
        border-radius: 5px;
        transition: all .5s;
        }

    </style>
</head>
<body background="/img/bg.png" >

<div>
    <header id="header">
        <nav>
            <ul>
                <li>
                    <a href="<%=root %>/">首页</a>
                    <a href="<%=root %>/about">关于</a>
                </li>
            </ul>
            <div class="my-info" onmouseover="hiddeewm()" onmouseout="hiddeewm()">
                <ul>
                    <li>
                        <a href="https://github.com/Original-Intention">
                            <img style="width:30px;height: 30px" src="<%=root %>/static/images/github.png">
                        </a>
                        <a href="<%=root %>/about">
                            <img style="width:35px;height: 40px" src="<%=root %>/static/images/email.png">
                        </a>
                    </li>
                </ul>
                <div id="hiddenewm" hidden="true" >
                    <img src="img/me.jpg" width="200px" height="200px" >
                    <p></p>
                </div>
            </div>
        </nav>
    </header>
    <div id="bg" >
        <p>
            初衷
            <br>
            <i>不忘初心，方得始终</i>
        </p>
    </div>
    <div id="container">
<article class="article">
            <time id="time1">${article.localTime}</time>
            <h2 style="text-align: center; ">${article.title}</h2>
            <p style="position: center" class="text-info">点击量:${article.click}</p>
            <section>
                <blockquote>
                    <p>${article.desci}</p>
                </blockquote>
                <p id="zhengwen">
                    ${article.content}
                </p>
                <p style="text-align:center;color:#ccc;font-size:12px;margin-top:40px;">
                    希望你今年过得比去年好一点
                    <br>
                    是因为有我
                </p>
                <p style="margin: 5em 0 1em;text-align: center;color: #83b8ec;font-size: .8em">
                    <span>Have a nice day :)</span>
                </p>
            </section>
        </article>
    </div>
    <% int i =1;    %>
    <c:forEach items="${comments}" var="comment">


        <article class="comment">
                <section style="text-align:left">
                <%= i++  %>楼&nbsp;&nbsp;${comment.name}&nbsp;&nbsp;${comment.date}<br/><br/>
                <p>${comment.content}</p><br/>
                </section>
            </article>
    </c:forEach>
    		<div class="form-horizontal" role="form" style="margin:10px">
    			<div class="form-group">
                        <label for="inputPassword" class="col-sm-2 control-label">评论</label>
                        <div class="col-sm-3">
                               <textarea id="content"  class="form-control" rows="3"  placeholder="文明上网，理性发言" ></textarea>
                         </div>
                 </div>
        <input id="articleId" type="hidden" value="${article.id}" >
    					<div class="form-group">
                    		<label for="name" class="col-sm-2 control-label">昵称</label>

                    		<div class="col-sm-3">
                    			<input type="text" id="name" class="form-control"
                    				   placeholder="昵称">
                    		</div>
                    	</div>
                    	<div class="form-group">
                               <label for="email" class="col-sm-2 control-label">邮箱</label>
                                <div class="col-sm-3">
                                  <input type="email" id="email" class="form-control"  placeholder="邮箱">
                                </div>
                        </div>
                        <div class="form-group" style="position:relative;left:13%">
     <br/>
        <p style="text-align: right;color: red;position: absolute" id="info"></p>
        <br/>
     <button id="commentButton" class="btn btn-default" type="submit">提交</button>
                                                </div>

    			</div>
    			 <script>

                        $("#commentButton").click(function () {
                            if($("#content").val()==''&&$("#name").val()==''&&$("#email").val()==''){
                                $("#info").text("提示:请输入评论内容,昵称和邮箱");
                            }
                            else if ($("#content").val()==''){
                                $("#info").text("提示:请输入评论内容");
                            }
                            else if($("#name").val()==''){
                                $("#info").text("提示:请输入昵称");
                            }
                            else if($("#email").val()==''){
                                $("#info").text("提示:请输入邮箱");
                            }
                            else {
                             $("#info").text("");
                                $.ajax({
                                    type: "POST",
                                    url: "<%=root %>/api/comment/add",
                                    data: {
                                        content: $("#content").val() ,
                                        name: $("#name").val(),
                                        email: $("#email").val(),
                                        articleId:$("#articleId").val(),
                                    },
                                    dataType: "json",
                                    success: function(data) {
                                        if(data.stateCode.trim() == "1") {
                                            $("#info").text("评论成功,跳转中...");
                                            window.location.reload();
                                        } else  {
                                            $("#info").text("评论失败...");
                                        }
                                    }
                                });
                            }
                        })

                    </script>
    <div style="position: relative;left: 12%">
        <c:if test="${!empty lastArticle }">
            <div ><a href="<%=root %>/article/?id=${lastArticle.id}"><h4><span class="label label-primary">上一篇:${lastArticle.title}</span></h4></a></div>
        </c:if>
        <c:if test="${!empty nextArticle }">
            <div><a href="<%=root %>/article/?id=${nextArticle.id}"><h4><span class="label label-success">下一篇:${nextArticle.title}</span></h4></a></div>
        </c:if>
    </div>
    </div>
<script>
    // 将特殊效果更新至主页中
    /**
     * Copyright (c) 2016 hustcc
     * License: MIT
     * Version: %%GULP_INJECT_VERSION%%
     * GitHub: https://github.com/hustcc/canvas-nest.js
     **/
    ! function() {
        //封装方法，压缩之后减少文件大小
        function get_attribute(node, attr, default_value) {
            return node.getAttribute(attr) || default_value;
        }
        //封装方法，压缩之后减少文件大小
        function get_by_tagname(name) {
            return document.getElementsByTagName(name);
        }
        //获取配置参数
        function get_config_option() {
            var scripts = get_by_tagname("script"),
                script_len = scripts.length,
                script = scripts[script_len - 1]; //当前加载的script
            return {
                l: script_len, //长度，用于生成id用
                z: get_attribute(script, "zIndex", -1), //z-index
                o: get_attribute(script, "opacity", 0.5), //opacity
                c: get_attribute(script, "color", "0,0,0"), //color
                n: get_attribute(script, "count", 99) //count
            };
        }
        //设置canvas的高宽
        function set_canvas_size() {
            canvas_width = the_canvas.width = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth,
                canvas_height = the_canvas.height = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
        }
        //绘制过程
        function draw_canvas() {
            context.clearRect(0, 0, canvas_width, canvas_height);
            //随机的线条和当前位置联合数组
            var e, i, d, x_dist, y_dist, dist; //临时节点
            //遍历处理每一个点
            random_points.forEach(function(r, idx) {
                r.x += r.xa,
                    r.y += r.ya, //移动
                    r.xa *= r.x > canvas_width || r.x < 0 ? -1 : 1,
                    r.ya *= r.y > canvas_height || r.y < 0 ? -1 : 1, //碰到边界，反向反弹
                    context.fillRect(r.x - 0.5, r.y - 0.5, 1, 1); //绘制一个宽高为1的点
                //从下一个点开始
                for (i = idx + 1; i < all_array.length; i++) {
                    e = all_array[i];
                    // 当前点存在
                    if (null !== e.x && null !== e.y) {
                        x_dist = r.x - e.x; //x轴距离 l
                        y_dist = r.y - e.y; //y轴距离 n
                        dist = x_dist * x_dist + y_dist * y_dist; //总距离, m
                        dist < e.max && (e === current_point && dist >= e.max / 2 && (r.x -= 0.03 * x_dist, r.y -= 0.03 * y_dist), //靠近的时候加速
                            d = (e.max - dist) / e.max,
                            context.beginPath(),
                            context.lineWidth = d / 2,
                            context.strokeStyle = "rgba(" + config.c + "," + (d + 0.2) + ")",
                            context.moveTo(r.x, r.y),
                            context.lineTo(e.x, e.y),
                            context.stroke());
                    }
                }
            }), frame_func(draw_canvas);
        }
        //创建画布，并添加到body中
        var the_canvas = document.createElement("canvas"), //画布
            config = get_config_option(), //配置
            canvas_id = "c_n" + config.l, //canvas id
            context = the_canvas.getContext("2d"), canvas_width, canvas_height,
            frame_func = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function(func) {
                window.setTimeout(func, 1000 / 45);
            }, random = Math.random,
            current_point = {
                x: null, //当前鼠标x
                y: null, //当前鼠标y
                max: 20000 // 圈半径的平方
            },
            all_array;
        the_canvas.id = canvas_id;
        the_canvas.style.cssText = "position:fixed;top:0;left:0;z-index:" + config.z + ";opacity:" + config.o;
        get_by_tagname("body")[0].appendChild(the_canvas);
        //初始化画布大小
        set_canvas_size();
        window.onresize = set_canvas_size;
        //当时鼠标位置存储，离开的时候，释放当前位置信息
        window.onmousemove = function(e) {
            e = e || window.event;
            current_point.x = e.clientX;
            current_point.y = e.clientY;
        }, window.onmouseout = function() {
            current_point.x = null;
            current_point.y = null;
        };
        //随机生成config.n条线位置信息
        for (var random_points = [], i = 0; config.n > i; i++) {
            var x = random() * canvas_width, //随机位置
                y = random() * canvas_height,
                xa = 2 * random() - 1, //随机运动方向
                ya = 2 * random() - 1;
            // 随机点
            random_points.push({
                x: x,
                y: y,
                xa: xa,
                ya: ya,
                max: 6000 //沾附距离
            });
        }
        all_array = random_points.concat([current_point]);
        //0.1秒后绘制
        setTimeout(function() {
            draw_canvas();
        }, 100);
    }();
</script>
<footer id="footer">
    <section id="copyright">
        <p style="font-size: 20px">
            © 2019 初衷
        </p>
    </section>
</footer>

</div>
</div>
</body>
</html>