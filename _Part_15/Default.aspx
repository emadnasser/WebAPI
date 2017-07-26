﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_Part_15.WebForm1" %>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8" />
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var ulEmployees = $('#ulEmployees');
            $('#btn').click(function () {
                $.ajax({
                    type: 'GET',
                    url: "http://localhost/_Part_5/api/Employees",
                    dataType: 'json',
                    success: function (data) {
                        ulEmployees.empty();
                        $.each(data, function (index, val) {
                            var fullName = val.FirstName + ' ' + val.LastName;
                            ulEmployees.append('<li>' + fullName + '</li>');
                        });
                    }
                });
            });
            $('#btnClear').click(function () {
                ulEmployees.empty();
            });
        });
    </script>
</head>
<body>
    <div>
        <input id="btn" type="button" value="Get All Employees" />
        <input id="btnClear" type="button" value="Clear" />
        <ul id="ulEmployees" />
    </div>
</body>
</html>
