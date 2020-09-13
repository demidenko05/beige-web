<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${rvs.cpf.usLoc}" scope="request"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
  <script type="text/javascript" src="../js/bsNum.js"></script>
  <script type="text/javascript" src="../js/bsInpNum.js"></script>
  <script type="text/javascript" src="../js/bsAjax.js"></script>
  <script type="text/javascript" src="../js/bsForm.js"></script>
  <script type="text/javascript" src="../js/bsI18n${rvs.upf.lng.iid}.js"></script>
  <link rel="stylesheet" href="../css/bsCmn.css" />
  <link rel="icon" type="image/png"  href="../img/favicon.png">
  <title>${i18n.getMsg("app_name", rvs.upf.lng.iid)}</title>
</head>
<body>

  <div class="navbar">
    <div class="dropdown">
      <a href="#" class="dropdown-btn">${i18n.getMsg("Common", rvs.upf.lng.iid)}</a>
      <div class="dropdown-content">
        <a href="#" onclick="bsGtAjx('GET', 'srv?act=lst&rnd=lhj&ent=Lng&pg=1&mbl=mbl/');">${i18n.getMsg("Lngs", rvs.upf.lng.iid)}</a>
        <a href="#" onclick="bsGtAjx('GET', 'srv?act=lst&rnd=lhj&ent=Cntr&pg=1&mbl=mbl/');">${i18n.getMsg("Cntrs", rvs.upf.lng.iid)}</a>
        <a href="#" onclick="bsGtAjx('GET', 'srv?act=lst&rnd=lhj&ent=DcSp&pg=1&mbl=mbl/');">${i18n.getMsg("DcSps", rvs.upf.lng.iid)}</a>
        <a href="#" onclick="bsGtAjx('GET', 'srv?act=lst&rnd=lhj&ent=DcGrSp&pg=1&mbl=mbl/');">${i18n.getMsg("DcGrSps", rvs.upf.lng.iid)}</a>
        <a href="#" onclick="bsGtAjx('GET', 'srv?act=lst&rnd=lhj&ent=UsPrf&pg=1&mbl=mbl/');">${i18n.getMsg("UsPrfs", rvs.upf.lng.iid)}</a>
        <a href="ntr?prc=RefrI18n" target="_blank">${i18n.getMsg("RefrI18n", rvs.upf.lng.iid)}</a>
        <a href="#" onclick="bsGtAjx('GET', 'srv?act=lst&rnd=lhj&ent=CsvMth&pg=1&mbl=mbl/');">${i18n.getMsg("CsvMths", rvs.upf.lng.iid)}</a>
        <a href="#" onclick="bsGtAjx('GET', 'srv?act=lst&rnd=lhj&ent=MaFrn&pg=1&mbl=mbl/');">${i18n.getMsg("MaFrns", rvs.upf.lng.iid)}</a>
      </div>
    </div>
    <div class="dropdown">
      <a href="#" class="dropdown-btn">...</a>
      <div class="dropdown-content">
        <a href="#" onclick="bsGtAjx('GET', 'ntr?prc=About');">${i18n.getMsg("About", rvs.upf.lng.iid)}</a>
        <a href="srv?rnd=mbl">Refresh</a>
        <a href="../">Home</a>
        <a href="#" onclick="bsOpnDlg('dlgI18n');">${i18n.getMsg("changeUsPrf", rvs.upf.lng.iid)}</a>
        <c:if test="${not empty pageContext['request'].userPrincipal}">
          <a href="../?logoff=true">${pageContext['request'].userPrincipal.name} ${i18n.getMsg("logout", rvs.upf.lng.iid)}</a>
        </c:if>
        <c:if test="${pageContext.servletContext.getInitParameter('ormDir') eq 'sqlite'}">
          <a href="ntr?prc=PrcUsrPwd&mbl=mbl/">${i18n.getMsg("change_password", rvs.upf.lng.iid)}</a>
        </c:if>
      </div>
    </div>
  </div>  

  <jsp:include page="tml/bum.jsp"/>

</body>
</html>
