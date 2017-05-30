﻿<%@page pageEncoding="utf-8"%>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
	request.setAttribute("path", basePath);  
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>日志</title>

    <link rel="shortcut icon" href="${path}assets/img/icon_j.ico"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="${path}assets/materialize/css/materialize.min.css" media="screen,projection"/>
    <!-- Bootstrap Styles-->
    <link href="${path}assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="${path}assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Morris Chart Styles-->
    <link href="${path}assets/js/morris/morris-0.4.3.min.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="${path}assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="${path}assets/js/Lightweight-Chart/cssCharts.css">
</head>
<body onload="showList()">
<div id="wrapper">
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                日志
            </h1>
            <ol class="breadcrumb">
                <li><a href="PersonalData.html">主页</a></li>
                <li><a href="Journal.html">日志</a></li>
                <!--<li class="active">数据</li>-->
            </ol>

        </div>

        <div id="page-inner">
            <div class="row">
                <div id="div-list" class="col-lg-12">
                    <div class="card">
                        <div id="div0" class="card-action">
                            <i class="material-icons">description</i><a href="#">草稿箱</a>
                            <i class="material-icons">delete</i><a href="#">回收站</a>
                            <i class="material-icons">settings</i><a href="#">设置</a>
                        </div>
                        <!--列表显示-->
                        <div class="card-content">
                            <ul class="collapsible" data-collapsible="accordion">
                                <li>
                                    <div id="divmyjournal01" class="collapsible-header">
                                        <i class="material-icons">perm_contact_calendar</i>
                                        我的日志
                                    </div>
                                    <div id="divmyjournal01-01" class="collapsible-body">
                                        <div class="cla01-01">
                                            <p>
                                                <a href="#" onclick="showShow()">第一篇日记</a>
                                            </p>

                                        </div>
                                        <div class="cla01-02">
                                            <p>
                                                <label>2017-05-04(11/66)</label>
                                                <a id="a-edit" href="#" onclick="writeAgain()">编辑</a>
                                            </p>
                                        </div>
                                        <div style="clear:both"></div><!--这个层很有用，必须要，否则可能不兼容。-->
                                    </div>
                                </li>
                                <li>
                                    <div id="divmyjournal02" class="collapsible-header">
                                        <i class="material-icons">lock_outline</i>
                                        私密日志
                                    </div>
                                    <div id="divmyjournal02-01" class="collapsible-body">
                                        <div class="cla02-01">
                                            <p>
                                                <a href="#" onclick="showShow()">第一篇私密日志</a>
                                            </p>
                                        </div>
                                        <div class="cla02-02">
                                            <p>
                                                <label>2017-05-04(11/66)</label>
                                                <a id="b-edit" href="#" onclick="writeAgain()">编辑</a>
                                            </p>
                                        </div>
                                        <div style="clear:both"></div><!--这个层很有用，必须要，否则可能不兼容。-->
                                    </div>
                                </li>
                                <li>
                                    <div id="divmyjournal03" class="collapsible-header">
                                        <i class="material-icons">mode_edit</i>
                                        写日志
                                    </div>
                                    <div class="collapsible-body">
                                        <!--<p></p>-->
                                        <div>

                                            <!--日志标题-->
                                            <div id="write02">
                                                <div>
                                                    <input type="text" placeholder="这里填写标题！">
                                                </div>
                                            </div>

                                            <!--内容-->
                                            <div id="write03">
                                                <div>
                                                    <textarea placeholder="这里写正文！"></textarea>
                                                </div>
                                            </div>

                                            <!--发表-->
                                            <div id="write01">
                                                <div>
                                                    <input type="radio" name="radio01" value="公开">
                                                    <label>公开</label>
                                                </div>
                                                <div>
                                                    <input type="radio" name="radio01" value="私密">
                                                    <label>私密</label>
                                                </div>
                                                <form>
                                                    <input type="submit" value="发表">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>

                <!--显示日志-->
                <div id="div-show" class="col-lg-12">
                    <div class="card">
                        <!--<div id="div0" class="card-action">
                            列表
                        </div>-->
                        <div id="div-show01" class="card-action">
                            <a href="#" onclick="showList()">返回列表</a>
                        </div>

                        <div class="card-content">
                            <div id="div-show02">
                                <div id="div-showtitle">
                                    <p>这是题目</p>
                                </div>
                                <div id="div-showcontent">
                                    <div>
                                        <h4>
                                            内容就做个测试吧！zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
                                            zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
                                            zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
                                            zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
                                            zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /. ROW  -->
            <footer>
                <p>Copyright &copy; 2016.Company name All rights reserved.
                    <a target="_blank" href="http://www.cqjtu.edu.cn/">CQJTU</a>
                </p>
            </footer>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="${path}assets/js/jquery-1.10.2.js"></script>

<!-- Bootstrap Js -->
<script src="${path}assets/js/bootstrap.min.js"></script>

<script src="${path}assets/materialize/js/materialize.min.js"></script>

<!-- Metis Menu Js -->
<script src="${path}assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="${path}assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="${path}assets/js/morris/morris.js"></script>


<script src="${path}assets/js/easypiechart.js"></script>
<script src="${path}assets/js/easypiechart-data.js"></script>

<script src="${path}assets/js/Lightweight-Chart/jquery.chart.js"></script>

<!-- Custom Js -->
<script src="${path}assets/js/custom-scripts.js"></script>
<script>
    $(document).ready(function () {
        $('ul.tabs').tabs();
        $('.collapsible').collapsible({
                accordion: false, // A setting that changes the collapsible behavior to expandable instead of the default accordion style
                onOpen: function (el) {
                    alert('Open');
                }, // Callback for Collapsible open
                onClose: function (el) {
                    alert('Closed');
                } // Callback for Collapsible close
            }
        );
    });

    function showList() {
        document.getElementById("div-show").style.display = "none";
        document.getElementById("div-list").style.display = "";
    }

    function showShow() {
        document.getElementById("div-list").style.display = "none";
        document.getElementById("div-show").style.display = "";
    }

    function writeAgain() {
        document.getElementById("divmyjournal03").click();
    }

</script>


</body>

</html>