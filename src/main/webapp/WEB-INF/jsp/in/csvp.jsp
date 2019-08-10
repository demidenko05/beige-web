<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty ent.ownr.rtrNm}">
  <tr>
    <td>
      <label for="dataPath">${i18n.getMsg("dataPath", rvs.upf.lng.iid)}</label>
    </td>
<c:if test="${not empty param.mbl}"></tr><tr></c:if>
    <td>
      <div class="input-line">
        <input class="picked-appearence"  type="text" disabled="disabled" id="dataPath" value="${ent.dtIdx}-${ent.fldPh}" onchange="bsInpChn(this);"/> 
        <button type="button" class="btn" onclick="bsPickCsvPth('ntr?prc=PrCsSmDtRo&rnd=csvpj&ret=','${ent.ownr.rtrNm}');">...</button>
        <button type="button" class="btn" onclick="bsClCsvPth();">X</button>
        <input type="hidden" id="CsvCldtIdx" name="CsvCl.dtIdx" value="${ent.dtIdx}">
        <input type="hidden" id="CsvClfldPh" name="CsvCl.fldPh" value="${ent.fldPh}">
      </div>
    </td>
  </tr>
</c:if>
