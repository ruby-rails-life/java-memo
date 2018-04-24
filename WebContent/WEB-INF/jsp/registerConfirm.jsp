<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="model.User"%>
<%User registerUser = (User) session.getAttribute("registerUser");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ユーザー登録</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <p>下記のユーザーを登録します。</p>
                <table class="table table-sm">
                    <tbody>
                        <tr>
                            <td style="width: 10%">ログインID</td>
                            <td><%= registerUser.getId()%></td>
                        </tr>
                        <tr>
                            <td>名前</td>
                            <td><%= registerUser.getName()%></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <br>
    <a href="/java-memo/RegisterUser">戻る</a>
    <a href="/java-memo/RegisterUser?action=done">登録</a>
</body>
</html>
