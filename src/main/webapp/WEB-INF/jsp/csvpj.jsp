<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="frPlNm" value="frmRep" scope="request"/>
<c:import url="/WEB-INF/jsp/tml/csvp.jsp" varReader="rdEdEn" charEncoding="UTF-8">
{"mlTrRsp":
  [{"trgNm": "${frPlNm}", "cont": "${utJsp.toJsonStrCls(rdEdEn)}",
    "trgPrNm": null, "jscr": "bsOpnDlg('piCsvPth${param.ret}Dlg');"}]
}
</c:import>
