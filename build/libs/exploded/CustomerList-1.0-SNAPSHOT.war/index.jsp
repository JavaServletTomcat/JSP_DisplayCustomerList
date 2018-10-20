<%--
  Created by IntelliJ IDEA.
  User: HaiNguyen
  Date: 10/20/2018
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hiển thị danh sách khách hàng</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
</head>
<body>
<div class="example">
    <div class="container">
        <div class="row">
            <h2>Hiển thị danh sách khách hàng</h2>
            <table class="table">
                <thead>
                <tr>
                    <th>Họ Tên</th>
                    <th>Ngày Sinh</th>
                    <th>Địa chỉ</th>
                    <th>Ảnh</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Văn Cường</td>
                    <td>05/12/2000</td>
                    <td>Ninh Bình</td>
                    <td><img src="images/1.jpg" height="80px" width="80px"></td>
                </tr>
                <tr>
                    <td>Hoài Minh</td>
                    <td>14/5/1997</td>
                    <td>Hà Nội</td>
                    <td><img src="images/2.jpg" height="80px" width="80px"></td>
                </tr>
                <tr>
                    <td>Quốc Minh</td>
                    <td>10/10/1990</td>
                    <td>Bắc Giang</td>
                    <td><img src="images/3.jpg" height="80px" width="80px"></td>
                </tr>

                <tr>
                    <td>Ngô Lan</td>
                    <td>10/10/1990</td>
                    <td>Quảng Ninh</td>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>
