<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Footer for home page
  --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.net.URLEncoder" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>

<%
    String sidebar = (String) request.getAttribute("dspace.layout.sidebar");
%>

            <%-- Right-hand side bar if appropriate --%>
<%
    if (sidebar != null)
    {
%>
	</div>
	<div class="col-md-3">
                    <%= sidebar %>
    </div>
    </div>
<%
    }
%>
</div>
</main>
<%-- Page footer --%>
<footer class="navbar navbar-inverse navbar-fixed-bottom" >

    <div id="designedby" class="container text-muted">
        <a href="http://www3.uea.edu.br/">
            <img class="img-logo-button" src="<%= request.getContextPath() %>/image/logo-uea.png"
                 alt="Logo UEA" />
        </a>
        <span class="pull-left text-uea">
                    UNIVERSIDADE DO ESTADO DO AMAZONAS<br>
                    Sistema Integrado de Bibliotecas SIB/UEA<br>
                    +55 92 98410-6272<br>
                    bibliotecacentral@uea.edu.br

                </span>
        <div id="footer_feedback" class="pull-right">
            <img class ="img-ibict-logo" src="<%= request.getContextPath() %>/image/bannerIbict.png"
                 alt="Logo Ibict"/>
        </div>
    </div>
    </footer>
    </body>
</html>
