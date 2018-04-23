<%@ Language=VBScript %>
<%

    Dim querystring = Request.ServerVariables("query_string")
    Dim key = "url="
    Dim urlParam =  Left(querystring,Len(key))
    Dim url
    'Dim externalLinkUrl = Right(querystring, Len(querystring) - Len(key))



    If LCase(urlParam) = key Then

        url = Mid(querystring,Len(key) + 1) 'Right(querystring, Len(querystring) - Len(key))
    Else
        url = Request.ServerVariables("HTTP_REFERER")
    End If

    'InStr(1,var,"s")
%>
<!DOCTYPE html>
<html>
<head>
    <title>Exit</title>
    <link href="css/style.css" rel="stylesheet" />
</head>

<body>
    <div class="wrapper">
        <header><h1>Exit</h1></header>
        <section id="content">


            <p>Going outside to play</p>
     
         
            <p><strong>Link:</strong> <a target="_blank" href="<%=url%>"><%=url%></a></p>

        </section>
    </div>
</body>
</html>