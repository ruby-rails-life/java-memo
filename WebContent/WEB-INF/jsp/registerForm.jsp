<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <form role="form" action="/java-memo/RegisterUser" method="post">
                <div class="form-group">
                    <label for="txtLoginID">
                        ログインID
                    </label>
                    <input type="text" class="form-control" id="txtLoginID" name="id" />
                </div>
                <div class="form-group">
                    <label for="txtLoginPass">
                        パスワード
                    </label>
                    <input type="text" class="form-control" id="txtLoginPass" name="pass" />
                </div>
                <div class="form-group">
                    <label for="txtLoginName">
                        名前
                    </label>
                    <input type="text" class="form-control" id="txtLoginName" name="name" />
                </div>

                <button type="submit" class="btn btn-primary">
                    確認
                </button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
